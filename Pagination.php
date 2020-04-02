<?php 

class Pagination
{
	private $per_page;
	private $conn;
	private $sql;
	private $php_self;

	public function __construct($conn, $sql, $per_page)
	{
		$this->conn 	= $conn;
		$this->sql 		= $sql;
		$this->per_page = $per_page;
	}

	private function totalRows()
	{
		$sql = $this->sql;
		$statement = $this->conn->prepare($sql);
		$statement->execute();
		$result = $statement->get_result();
		$statement->close();
		$totalRows = $result->num_rows;
		return $totalRows;
	}

	private function currentPage()
	{
		if(filter_has_var(INPUT_GET, 'page'))
		{
			$page = filter_input(INPUT_GET, 'page', FILTER_VALIDATE_INT);
			if($page == 0)
				$page = 1;
		}
		else
		{
			$page = 1;
		}
		return $page;
	}

	private function offset()
	{
		return $this->per_page * ($this->currentPage() - 1);
	}

	private function totalPages()
	{
		return ceil($this->totalRows() / $this->per_page);
	}

	private function executeQuery()
	{
		$sql = $this->sql." LIMIT ".$this->offset().",".$this->per_page;
		$statement = $this->conn->prepare($sql);
		$statement->execute();
		$result = $statement->get_result();
		$statement->close();
		return $result;
	}

	// call only this function not others
	public function nextAndPreviousButtons()
	{
		$results 		= [];
		$this->php_self = basename($_SERVER['PHP_SELF']);
		$page 			= $this->currentPage();
		$totalPages 	= $this->totalPages();

		if($page > 1 )
			$results['previous'] = $this->php_self.'?page='.($page-1);
		else
			$results['previous'] = 'javascript:void(0)';

		if($page < $totalPages )
			$results['next'] = $this->php_self.'?page='.($page+1);
		else
			$results['next'] = 'javascript:void(0)';

		$results['page'] = $page;
		$results['totalPages'] = $totalPages;
		$results['query'] = $this->executeQuery();
		return $results;
	}
}
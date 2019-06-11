<?php
class Database {
	public static $function_trace;
	public static $query_time_elapsed;
	public $db = null;
	public static $query_counter_jm = 0;

	public static $query_counter_all = 0;
	public static $query_sql_collector;
	
	# Class constructor
	public function __construct() {
		$docRoot = $_SERVER['DOCUMENT_ROOT'];
		$docRoot = str_replace('public_html', 'Database', $docRoot);
		$docRoot = str_replace('private_html', 'Database', $docRoot);
		require $docRoot.'/settings/begin.php';
		
		try {
			$this->db = new PDO("mysql:host=$sHost;dbname=$sDb;charset=utf8;", $sUser, $password);
			$this->db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
			$this->db->setAttribute(PDO::ATTR_DEFAULT_FETCH_MODE, PDO::FETCH_ASSOC);
		} catch (PDOException $e) {
			echo "cound not connect!";	
			return;
		}

		$this->db->exec("SET NAMES utf8, CHARACTER SET utf8");

		
	}

	public function generateErrorMessage($function, $e, $sql) {
		echo '<div>
			<h3>MySQL Error</h3>
			<p>Pagina: '.$_SERVER["PHP_SELF"].'</p>
			<p>Functie: '.$function.'</p>
			'.$sql.'
			<br /><br />
			'.$e->getMessage().'
		</div>';
	}

	# Only for non-returning methods
	# And only use this static method if you're going to create and delete an object only for one query
	public function performQuery($sql, $params = null) {
		try {
			$stmt = $this->db->prepare($sql);
			$stmt->execute($params);
		} catch (PDOException $e) {
			Database::generateErrorMessage(__FUNCTION__, $e, $sql);
		}
	}
	
	# Fetch 1 row
	public function fetchAssoc($sql, $params = null) {
		try {
			$stmt = $this->db->prepare($sql);
			$stmt->execute($params);
			
			return $stmt->fetch();
		} catch (PDOException $e) {
			Database::generateErrorMessage(__FUNCTION__, $e, $sql);
		}
	}
	
	# Fetch all rows
	public function fetchAll($sql, $params = null) {
		try {
			$stmt = $this->db->prepare($sql);
			$stmt->execute($params);
			
			return $stmt->fetchAll();
		} catch (PDOException $e) {
			Database::generateErrorMessage(__FUNCTION__, $e, $sql);
		}
	}
}
?>

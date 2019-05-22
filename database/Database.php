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
		echo '<script>document.querySelector(\'body\').classList.remove(\'fade-out\');</script>';

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
	
	# Static version of performQuery()
	public static function executeQuery($sql, $params = null) {
		$db = new Database();
		$db->performQuery($sql, $params);
		unset($db);
	}
	
	# Fetch first column
	public function fetchScalar($sql, $params = null) {
		try {
			$stmt = $this->db->prepare($sql);
			$stmt->execute($params);
			
			return $stmt->fetchColumn();
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
	
	# Inserts a new row and fetches ID
	public function insertAndfetchId($sql, $params = null) {
		try {
			$stmt = $this->db->prepare($sql);
			$stmt->execute($params);
			
			return $this->db->lastInsertId();
		} catch (PDOException $e) {
			Database::generateErrorMessage(__FUNCTION__, $e, $sql);
		}
	}

	public function PDODebugger($raw_sql, $parameters) {
        $keys = array();
        $values = array();
        /*
         * Get longest keys first, sot the regex replacement doesn't
         * cut markers (ex : replace ":username" with "'joe'name"
         * if we have a param name :user )
         */
        $isNamedMarkers = false;
        if (count($parameters) && is_string(key($parameters))) {
            uksort($parameters, function($k1, $k2) {
                return strlen($k2) - strlen($k1);
            });
            $isNamedMarkers = true;
        }
        foreach ($parameters as $key => $value) {
            // check if named parameters (':param') or anonymous parameters ('?') are used
            if (is_string($key)) {
                $keys[] = '/:'.ltrim($key, ':').'/';
            } else {
                $keys[] = '/[?]/';
            }
            // bring parameter into human-readable format
            if (is_string($value)) {
                $values[] = "'" . addslashes($value) . "'";
            } elseif(is_int($value)) {
                $values[] = strval($value);
            } elseif (is_float($value)) {
                $values[] = strval($value);
            } elseif (is_array($value)) {
                $values[] = implode(',', $value);
            } elseif (is_null($value)) {
                $values[] = 'NULL';
            }
        }
        if ($isNamedMarkers) {
            return preg_replace($keys, $values, $raw_sql);
        } else {
            return preg_replace($keys, $values, $raw_sql, 1, $count);
        }
    }	
}
?>

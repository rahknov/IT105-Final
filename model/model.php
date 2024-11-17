<?php
class Model
{
    public $db = null;

    function __construct()
    {
        try {
            $this->db = new mysqli('localhost', 'root', '', 'dogs');
        } catch (mysqli_sql_exception $e) {
            exit('Database connection could not be established.');
        }
    }

    public function getDogList()
    {
        $data = array();
        $queryGetDogs = mysqli_query($this->db, "SELECT * FROM dog_records");

        while ($getRow = mysqli_fetch_object($queryGetDogs)) {
            $data[] = $getRow; // Add the row to the results (data) array
        }
        return $data;
    }
    public function getBookList() 
	    {
	        $data = array();

			$queryGetBooks = mysqli_query($this->db,"SELECT * from tblbooks");

			while($getRow=mysqli_fetch_object($queryGetBooks))    		
			{    			
			  $data[] = $getRow; // add the row in to the results (data) array
			}
			return $data;     
	    }

    public function getDogsByBreed($breed = null)
    {
        $data = array();
        if ($breed) {
            // Prepare statement to prevent SQL injection
            $stmt = $this->db->prepare("SELECT * FROM dog_records WHERE dog_breed = ?");
            $stmt->bind_param("s", $breed);
            $stmt->execute();
            $result = $stmt->get_result();

            while ($getRow = $result->fetch_object()) {
                $data[] = $getRow; // Add the row to the results (data) array
            }
        } else {
            return $this->getDogList(); // Return all dogs if no breed specified
        }
        return $data;
    }

    public function fetchDogByName($dog_name = null)
    {
        $dog = null;

        if ($dog_name) {
            // Prepare the SQL statement to prevent SQL injection
            $stmt = $this->db->prepare("SELECT * FROM dog_records WHERE dog_name = ?");
            $stmt->bind_param("s", $dog_name); // Bind the dog name to the query
            $stmt->execute();
            $result = $stmt->get_result();

            if ($result && $result->num_rows > 0) {
                $dog = $result->fetch_object(); // Get the specific dog details
            }
        }

        return $dog;
    }
   
    public function deleteDog($dog_name)
    {
        $stmt = $this->db->prepare("DELETE FROM dog_records WHERE dog_name = ?");
        $stmt->bind_param("s", $dog_name);
        return $stmt->execute();
    }

    public function addDog($dog_name, $dog_breed, $dog_age, $dog_weight, $owner_name, $owner_phone, $vaccination_status, $img_dir) {
        $stmt = $this->db->prepare("INSERT INTO dog_records (dog_name, dog_breed, dog_age, dog_weight, owner_name, owner_phone, vaccination_status, img_dir) 
                                    VALUES (?, ?, ?, ?, ?, ?, ?, ?)");
        $stmt->bind_param("ssidsiss", $dog_name, $dog_breed, $dog_age, $dog_weight, $owner_name, $owner_phone, $vaccination_status, $img_dir);
        return $stmt->execute();
    }
    public function updateDog($dog_id, $dog_name, $dog_breed, $dog_age, $dog_weight, $owner_name, $owner_phone, $vaccination_status, $img_dir)
    {
        $stmt = $this->db->prepare("UPDATE dog_records SET dog_name = ?, dog_breed = ?, dog_age = ?, dog_weight = ?, owner_name = ?, owner_phone = ?, vaccination_status = ?, img_dir = ? WHERE dog_id = ?");
        $stmt->bind_param("ssidsissi", $dog_name, $dog_breed, $dog_age, $dog_weight, $owner_name, $owner_phone, $vaccination_status, $img_dir, $dog_id);
        return $stmt->execute();
    }

    public function fetchDogById($dog_id)
    {
        $dog = null;
        if ($dog_id) {
            $stmt = $this->db->prepare("SELECT * FROM dog_records WHERE dog_id = ?");
            $stmt->bind_param("i", $dog_id);
            $stmt->execute();
            $result = $stmt->get_result();

            if ($result && $result->num_rows > 0) {
                $dog = $result->fetch_object(); // Get the specific dog details
            }
        }
        return $dog;
    }



    
}
?>

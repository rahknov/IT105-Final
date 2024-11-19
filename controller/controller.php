<?php
class Controller
{
    public $model = null;

    function __construct()
    {
        require_once('model/model.php');
        $this->model = new Model();
    }

    public function getPage()
    {
        $command = null;

        if (isset($_REQUEST['command']))
            $command = $_REQUEST['command'];

        switch ($command) {
            case 0:
                include_once('view/home.php');
                break;
            case 1:
                // Fetch the dog records for the gallery
                $dogs = $this->model->getDogList();
                include_once('view/gallery.php');  // Load the gallery view
                break;
            case 2:
                include_once('view/about-us.php');
                break;
            
            case 'viewDogs':
                {
                    $breed = isset($_REQUEST['breed']) ? $_REQUEST['breed'] : null;
                    $dogs = $this->model->getDogsByBreed($breed);
                    include 'view/viewdoglist.php';
                    break;
                }
            
            
                case 'deleteDog':
                    {
                        $dog_id = $_REQUEST['dog_id'];  // Get the dog_id from the request
                        $result = $this->model->deleteDog($dog_id);  // Pass dog_id to the deleteDog function
                        $message = $result ? "Dog deleted successfully." : "Error deleting dog.";
                        echo "<script>alert('$message'); window.location.href='index.php?command=viewDogs';</script>";
                        break;
                    }
                    
                case 'addView':
                    {
                        include 'view/adddog.php';
                        break;
                    }
                    
                    case 'addDog': {
                        if ($_SERVER['REQUEST_METHOD'] === 'POST') {
                            $dog_name = $_POST['dog_name'];
                            $dog_breed = $_POST['dog_breed'];
                            $dog_age = $_POST['dog_age'];
                            $dog_weight = $_POST['dog_weight'];
                            $owner_name = $_POST['owner_name'];
                            $owner_phone = $_POST['owner_phone'];
                            $vaccination_status = $_POST['vaccination_status'];
                    
                            // Handle image upload
                            $target_dir = "uploads/";
                            $target_file = $target_dir . basename($_FILES["img_dir"]["name"]);
                            move_uploaded_file($_FILES["img_dir"]["tmp_name"], $target_file);
                    
                            $img_dir = $target_file;
                    
                            // Call the model function to add a new dog
                            $result = $this->model->addDog($dog_name, $dog_breed, $dog_age, $dog_weight, $owner_name, $owner_phone, $vaccination_status, $img_dir);
                    
                            if ($result) {
                                echo "<script>alert('Dog added successfully!'); window.location.href='index.php?command=viewDogs';</script>";
                            } else {
                                echo "<script>alert('Error adding dog. Please try again.'); window.location.href='index.php?command=viewDogs';</script>";
                            }
                        } else {
                            include_once('view/adddog.php');
                        }
                        break;
                    }
                    case 'editDog':
                        {
                            // Get the dog_id from the URL parameters
                            $dog_id = isset($_REQUEST['dog_id']) ? $_REQUEST['dog_id'] : null;
                    
                            // Fetch the specific dog's details using the model
                            $dog = $this->model->fetchDogById($dog_id);
                    
                            // Load the edit form with pre-filled data
                            include 'view/editdog.php';
                            break;
                        }

                    case 'dogView':
                        {
                            // Get the dog_id from the URL parameters
                            $dog_id = isset($_REQUEST['dog_id']) ? $_REQUEST['dog_id'] : null;
                    
                            // Fetch the specific dog's details using the model
                            $dog = $this->model->fetchDogById($dog_id);
                    
                            // Load the edit form with pre-filled data
                            include 'view/viewdogdetails.php';
                            break;
                        }
                    
                    case 'updateDog':
                        {
                            if ($_SERVER['REQUEST_METHOD'] === 'POST') {
                                $dog_id = $_POST['dog_id'];
                                $dog_name = $_POST['dog_name'];
                                $dog_breed = $_POST['dog_breed'];
                                $dog_age = $_POST['dog_age'];
                                $dog_weight = $_POST['dog_weight'];
                                $owner_name = $_POST['owner_name'];
                                $owner_phone = $_POST['owner_phone'];
                                $vaccination_status = $_POST['vaccination_status'];
                    
                                // Handle image upload
                                $target_dir = "uploads/";
                                $target_file = $target_dir . basename($_FILES["img_dir"]["name"]);
                                move_uploaded_file($_FILES["img_dir"]["tmp_name"], $target_file);
                    
                                $img_dir = $target_file;
                    
                                // Call the model function to update the dog
                                $result = $this->model->updateDog($dog_id, $dog_name, $dog_breed, $dog_age, $dog_weight, $owner_name, $owner_phone, $vaccination_status, $img_dir);
                    
                                if ($result) {
                                    echo "<script>alert('Dog updated successfully!'); window.location.href='index.php?command=viewDogs';</script>";
                                } else {
                                    echo "<script>alert('Error updating dog. Please try again.'); window.location.href='index.php?command=viewDogs';</script>";
                                }
                            }
                            break;
                        }
                        case 'searchDogs':
                            {
                                $searchTerm = isset($_GET['search']) ? $_GET['search'] : '';
                                $dogs = $this->model->searchDogs($searchTerm);
                                include 'view/viewdoglist.php';
                                break;
                            }
                        
                        
                    
            }
    }
}
?>

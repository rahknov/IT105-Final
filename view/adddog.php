<!DOCTYPE html>
<html>
<head>
    <title>Add New Dog</title>
    <script type="text/javascript">
        function imagePreview(event) {
            if (event.target.files.length > 0) {
                var src = URL.createObjectURL(event.target.files[0]);
                var preview = document.getElementById("previewImage");
                preview.src = src;      
                preview.style.display = "block";
            }
        }
    </script>
    <style>
        input[type="file"] {
            display: none;
        }

        .custom-file-button {
            border: 1px solid #ccc;
            display: inline-block;
            padding: 10px 20px;
            cursor: pointer;
            background-color: #197909;
            color: #fff;
        }
    </style>
</head>
<body>
    <form action="index.php?command=addDog" method="post" enctype="multipart/form-data">
        <table align="center" border="1">
            <tr>
                <td>Dog Name:</td>
                <td><input type="text" name="dog_name" required></td>
            </tr>
            <tr>
                <td>Breed:</td>
                <td>
                    <input list="breeds" name="dog_breed" required>
                    <datalist id="breeds">
                        <option value="Golden Retriever">
                        <option value="Corgi">
                        <option value="Bulldog">
                        <option value="Pomeranian">
                        <option value="German Shepherd">
                        <option value="Beagle">
                        <option value="Poodle">
                        <option value="Rottweiler">
                        <option value="Chow Chow">
                        <option value="Siberian Husky">
                    </datalist>
                </td>
            </tr>
            <tr>
                <td>Age:</td>
                <td><input type="number" name="dog_age" required></td>
            </tr>
            <tr>
                <td>Weight (kg):</td>
                <td><input type="number" step="0.01" name="dog_weight" required></td>
            </tr>
            <tr>
                <td>Owner Name:</td>
                <td><input type="text" name="owner_name" required></td>
            </tr>
            <tr>
                <td>Owner Phone:</td>
                <td><input type="text" name="owner_phone" required></td>
            </tr>
            <tr>
                <td>Vaccination Status:</td>
                <td>
                    <select name="vaccination_status" required>
                        <option value="Expired">Expired</option>
                        <option value="Up to Date">Up to Date</option>
                        <option value="Overdue">Overdue</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center">Upload Dog Image:</td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <img src="uploads/preview.jpg" id="previewImage" alt="preview" width="300" height="300">
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <label for="fileToUpload" class="custom-file-button">Upload Image</label>
                    <input type="file" name="img_dir" id="fileToUpload" onchange="imagePreview(event)" accept="image/*">
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <input type="submit" value="Add Dog" name="saveRecords">
                    <input type="reset" value="Reset">
                </td>
            </tr>
        </table>
    </form>
</body>
</html>

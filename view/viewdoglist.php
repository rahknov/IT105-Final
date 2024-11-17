<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dog List</title>
</head>
<body>

    <h2>Dog List</h2>
    <table border="1" cellpadding="10" cellspacing="0" align="center">
        <thead>
            <tr>
                <th>Dog Name</th>
                <th>Breed</th>
                <th>Age</th>
                <th>Weight</th>
                <th>Owner Name</th>
                <th>Owner Phone</th>
                <th>Vaccination Status</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            <?php
            // Assuming you have a $dogs array or list fetched from the database
            // Loop through each dog record
            foreach ($dogs as $dog) {
                echo "<tr>";
                // Wrap dog name in a hyperlink
                echo "<td><a href='index.php?command=viewSpecific&dog_name=" . urlencode($dog->dog_name) . "'>" . htmlspecialchars($dog->dog_name) . "</a></td>";
                echo "<td>" . htmlspecialchars($dog->dog_breed) . "</td>";
                echo "<td>" . htmlspecialchars($dog->dog_age) . "</td>";
                echo "<td>" . htmlspecialchars($dog->dog_weight) . "</td>";
                echo "<td>" . htmlspecialchars($dog->owner_name) . "</td>";
                echo "<td>" . htmlspecialchars($dog->owner_phone) . "</td>";
                echo "<td>" . htmlspecialchars($dog->vaccination_status) . "</td>";
                echo "<td>
                        <a href='index.php?command=editDog&dog_id=" . urlencode($dog->dog_id) . "'>Edit</a> | 
                        <a href='index.php?command=deleteDog&dog_name=" . urlencode($dog->dog_name) . "' onclick='return confirm(\"Are you sure you want to delete this dog?\")'>Delete</a>
                    </td>";
                echo "</tr>";
            }
            ?>
        </tbody>
    </table>

    <p><a href="index.php?command=addView">Add New Dog</a></p>

</body>
</html>

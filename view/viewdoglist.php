<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dog List</title>
</head>
<body>

    <h2>Dog List</h2>

    <!-- Search Form -->
    <form method="get" action="index.php" style="text-align: center; margin-bottom: 20px;">
        <input type="hidden" name="command" value="searchDogs">
        <input type="text" name="search" placeholder="Search by any field..." value="<?php echo isset($_GET['search']) ? htmlspecialchars($_GET['search']) : ''; ?>" style="width: 50%; padding: 5px;" />
        <button type="submit">Search</button>
    </form>

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
            if (!empty($dogs)) {
                foreach ($dogs as $dog) {
                    echo "<tr>";
                    echo "<td><a href='index.php?command=dogView&dog_id=" . urlencode($dog->dog_id) . "'>" . htmlspecialchars($dog->dog_name) . "</a></td>";
                    echo "<td>" . htmlspecialchars($dog->dog_breed) . "</td>";
                    echo "<td>" . htmlspecialchars($dog->dog_age) . "</td>";
                    echo "<td>" . htmlspecialchars($dog->dog_weight) . "</td>";
                    echo "<td>" . htmlspecialchars($dog->owner_name) . "</td>";
                    echo "<td>" . htmlspecialchars($dog->owner_phone) . "</td>";
                    echo "<td>" . htmlspecialchars($dog->vaccination_status) . "</td>";
                    echo "<td>
                            <a href='index.php?command=editDog&dog_id=" . urlencode($dog->dog_id) . "'>Edit</a> | 
                            <a href='index.php?command=deleteDog&dog_id=" . urlencode($dog->dog_id) . "' onclick='return confirm(\"Are you sure you want to delete this dog?\")'>Delete</a>
                          </td>";
                    echo "</tr>";
                }
            } else {
                echo "<tr><td colspan='8' style='text-align: center;'>No dogs found.</td></tr>";
            }
            ?>
        </tbody>
    </table>

    <p><a href="index.php?command=addView">Add New Dog</a></p>

</body>
</html>

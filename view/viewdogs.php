<!DOCTYPE html>
<html>
<head>
    <title>View Dogs</title>
    <style>
        
        table {
            width: 100%;
            border-collapse: collapse;
            text-align: center; 
        }

        th, td {
            border: 1px solid #dddddd;
            padding: 8px;
        }

        th {
            background-color: #f2f2f2;
            font-weight: bold;
        }

      
        th:nth-child(1), td:nth-child(1) { width: 15%; } 
        th:nth-child(2), td:nth-child(2) { width: 15%; } 
        th:nth-child(3), td:nth-child(3) { width: 10%; }
        th:nth-child(4), td:nth-child(4) { width: 10%; } 
        th:nth-child(5), td:nth-child(5) { width: 20%; } 
        th:nth-child(6), td:nth-child(6) { width: 15%; } 
        th:nth-child(7), td:nth-child(7) { width: 15%; } 

        /* Optional: Hover effect */
        tbody tr:hover {
            background-color: #f1f1f1;
        }
    </style>
</head>
<body>

<table>
    <thead>
        <tr>
            <th>Dog Name</th>
            <th>Breed</th>
            <th>Age</th>
            <th>Weight (kg)</th>
            <th>Owner Name</th>
            <th>Phone</th>
            <th>Vaccination Status</th>
        </tr>
    </thead>
    <tfoot>
        <tr>
            <td>Dog Name</td>
            <td>Breed</td>
            <td>Age</td>
            <td>Weight (kg)</td>
            <td>Owner Name</td>
            <td>Phone</td>
            <td>Vaccination Status</td>
        </tr>
    </tfoot>
    <tbody>
    <?php
        foreach($dogs as $dog)
        {
            echo "<tr>";
                echo "<td>". $dog->dog_name ."</td>";
                echo "<td>". $dog->dog_breed ."</td>";
                echo "<td>". $dog->dog_age ."</td>";
                echo "<td>". $dog->dog_weight ."</td>";
                echo "<td>". $dog->owner_name ."</td>";
                echo "<td>". $dog->owner_phone ."</td>";
                echo "<td>". $dog->vaccination_status ."</td>";
            echo "</tr>";
        }
    ?>
    </tbody>
</table>

</body>
</html>
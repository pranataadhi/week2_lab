<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <title>Article Detail</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }

        .container {
            padding: 20px;
        }

        .article {
            padding: 20px;
            border: 1px solid #ddd;
            margin-top: 20px;
        }

        .article h2 {
            margin-top: 0;
        }

        .article img {
            max-width: 100%;
            height: auto;
        }
    </style>
</head>

<body>

    <div class="container">
        <?php
        include('koneksi.php');

        if (isset($_GET['id'])) {
            $id = $_GET['id'];

            $query = "SELECT * FROM articles WHERE id=$id";
            $result = $conn->query($query);

            if ($result->num_rows > 0) {
                while ($row = $result->fetch_assoc()) {
                    echo "<div class='article'>";
                    echo "<h2>" . $row['title'] . "</h2>";
                    echo "<p><em>Author: " . $row['author'] . " | Date: " . $row['publish_date'] . "</em></p>";
                    echo "<img src='" . $row['image_url'] . "' alt='Image'><br>";
                    echo "<p>" . $row['content'] . "</p>";
                    echo "</div>";
                }
            } else {
                echo "No article found.";
            }
        }
        ?>
    </div>
    <p> <a href="index.php">Kembali</a>.</p>

</body>

</html>
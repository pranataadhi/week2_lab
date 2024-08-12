<?php
include('koneksi.php');
$query = mysqli_query($conn, "SELECT * FROM articles");

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Article Website</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <header>
        <h1>Welcome to the Article Website</h1>
    </header>
    <main>
        <?php while ($row = mysqli_fetch_array($query)) { ?>
            <div class="article-summary">
                <h2><?php echo $row['title']; ?></h2>
                <a href="article_detail.php?id=<?php echo $row['id']; ?>">Read More</a>
            </div>
        <?php } ?>
    </main>
</body>
</html>

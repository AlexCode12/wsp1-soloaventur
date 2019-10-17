<?php

include 'include/db.php';

$filteredId = 1;

if (isset ($_GET['id'])) {
    $id = $_GET['id'];
    $filteredId = filter_input(INPUT_GET, 'id', FILTER_VALIDATE_INT);
} 
$sth = $dbh->prepare('SELECT * 
                    FROM story
                    WHERE id = :filteredId');

$sth->bindParam('filteredId', $filteredId);

$sth->execute();

$story = $sth->fetch(PDO::FETCH_ASSOC);

$sth = $dbh->prepare('SELECT * FROM links
                    WHERE story_id = :filteredId');

$sth->bindParam('filteredId', $filteredId);

$sth->execute();

$links = $sth->fetchAll(PDO::FETCH_ASSOC);

$pageTitle = "Hans och Greta: Alex Edition - Sida $id";

include 'views/index_layout.php';

?>
<?php
session_start();
if (!isset($_SESSION['items']))
    $_SESSION['items'] = [];
//array_push($_SESSION['items'], "Svamp");
if (isset($_POST['item'])) {
    // echo "<pre>" . print_r($_POST, 1) . "</pre>";
    array_push($_SESSION['items'], $_POST['item']);
}
echo "<pre>" . print_r($_SESSION, 1) . "</pre>";
// leta efter en svamp i inventoryt
$find = "Svamp";
$hit = array_search($find, $_SESSION['items']);
if (isset($hit)) {
    unset($_SESSION['items'][$hit]);
}
// slumpa ett föremål ur arrayen
echo "ge mig en slumpad: " . array_rand($_SESSION['items']);
?>

<form action="test2.php" method="post">
    <label for="item">Ett föremål: </label>
    <input type="text" name="item">
    <input type="submit" value="Plocka upp">
</form>
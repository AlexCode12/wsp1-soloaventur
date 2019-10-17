<body>
    <main>
    <?php include 'navbar.php'?>
        <p>
            <?= $story['body'] ?>
        </p>
        <ul>
            <?php foreach ($links as $link): ?>
            <?php include 'buttons.php'?>
            <?php endforeach ?>
        </ul>
    </main>
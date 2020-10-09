<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="/css/style.css">
    <title>Каталог</title>
</head>
<body>
    <header>
        <h1>Каталог</h1>
    </header>
    <main> 
        <ul class="list">  
            <?php
                foreach ($data as $key => $value):
            ?>   
            <li class="list__item" dataCollection="<?php echo($value['id_collection']);?>" dataCollectionName="<?php echo($value['title']);?>">
                <a href="/home/card/<?php echo($value['id']);?>">
                    <span>Название: <?php echo($value['name']);?></span>
                    <span>Цена: <?php echo($value['price']);?></span>
                </a>
            </li>
            <?php 
                endforeach;
            ?>
        </ul>
    </main>
    <script src="/js/script.js"></script>
</body>
</html>
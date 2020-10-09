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
        <h1>Товар</h1>
    </header>
    <main> 
        <ul class="list-product">
            <li class="list-product__item">
                <span>Название: <?php echo($data[0]['name']);?></span>
            </li>
            <li class="list-product__item">
                <span>Цена: <?php echo($data[0]['price']);?></span>
            </li>
            <li class="list-product__item">
                <span>Коллекция: <?php echo($data[0]['title']);?></span>
            </li>
        </ul>
    </main>
</body>
</html>
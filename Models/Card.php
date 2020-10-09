<?php

namespace Models;

/**
 * Модель "Карточка товара" содержащая бизнес логику
 * относящуюся к сущности "products"
 */
class Card
{
    /**
     * Метод, отвечающий за получение всех данных
     * о продуктах для карточки
     */
    public function displayInfo($parameters)
    {
        $dsn = 'mysql:host=localhost;dbname=isdigi;';
        $pdo = new \PDO($dsn, 'root', 'root');
        $sql = 'SELECT products.id, products.name, products.price, products.id_collection, collection.title FROM products INNER JOIN collection WHERE products.id_collection = collection.id AND products.id = ' . $parameters . ' ORDER BY products.id_collection';
        
        return $pdo->query($sql)->fetchAll(\PDO::FETCH_ASSOC);
    }
}


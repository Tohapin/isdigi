<?php

namespace Models;

/**
 * Модель "Товаров" содержащая бизнес логику
 * относящуюся к сущности "products"
 */
class Products
{
    /**
     * Метод, отвечающий за получение всех данных
     * о продуктах для каталога
     */
    public function displayAll()
    {
        try {

            $dbcon = new \PDO('mysql:host=localhost;dbname=isdigi', 'root', 'root');
            $sql = 'SELECT products.id, products.name, products.price, products.id_collection, collection.title FROM products INNER JOIN collection WHERE products.id_collection = collection.id ORDER BY products.id_collection';
            $data = $dbcon->query($sql)->fetchAll(\PDO::FETCH_ASSOC);

            return $data;
        } catch(\PDOException $e) {
            echo 'Ошибка: ' . $e->getMessage();
        }
    }
}
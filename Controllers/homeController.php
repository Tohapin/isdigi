<?php

namespace Controllers;

use System\View;
use Models\Products;
use Models\Card;

/**
 * Главный контроллер приложения
 */
class homeController
{
    /**
     * Действие отвечающее за отображение главной
     * страницы
     */
    public function actionIndex()
    {
        $model = new Products();

        $data = $model->displayAll();

        View::render('index', $data);
    }

    public function actionCard($parameters)
    {
        $model = new Card();

        $data = $model->displayInfo($parameters);

        View::render('card', $data);
    }
}


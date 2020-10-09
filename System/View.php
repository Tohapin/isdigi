<?php

namespace System;

/**
 * Главный класс реализующий функционал отображения
 * представлений
 */
class View
{
    public static function render(string $path, $data)
    {
        $fullPath = __DIR__ . '/../Views/' . $path . '.php';
        
        if (!file_exists($fullPath)) {
            throw new \ErrorException('view cannot be found');
        }
        
        include($fullPath);
    }
}


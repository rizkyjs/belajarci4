<?php

namespace App\Controllers;

class Pages extends BaseController
{
    public function index()
    {

        $data = [
            'title' => 'Home | Komik'
        ];

        echo view('pages/home', $data);
    }
    public function about()
    {
        $data = [
            'title' => 'About | Komik'
        ];

        echo view('pages/about', $data);
    }
}

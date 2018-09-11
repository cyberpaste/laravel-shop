<?php

namespace App\Http\Helpers;

use Illuminate\Support\Facades\View;
use Illuminate\Support\Facades\Log;
use App\Currency;
use App\Category;

class WidgetHelper {

    public function __call($name, $arguments) {
        Log::alert('Вызов несуществующего метода виджета ' . $name . ' с параметрами ' . print_r($arguments, true));
    }

    public function Cart() {
        return View::first(['cart']);
    }

    public function LeftMenu() {
        $list = Category::getWithSubcategories();
        return View::first(['left-menu'], ['list' => $list]);
    }

    public function TopNavbar() {
        return View::first(['top-navbar']);
    }

    public function TopSearch() {
        $list = Category::getPrimary();
        $list[] = ['id' => 0, 'title' => 'Все категории'];
        uasort($list, function ($item1, $item2) {
            return $item1['id'] <=> $item2['id'];
        });
        return View::first(['top-search'], ['list' => $list]);
    }

    public function TopMenu() {
        return View::first(['top-menu']);
    }

    public function MainSlider() {
        return View::first(['main-slider']);
    }

    public function CurrencyList() {
        $list = Currency::getAll();
        return View::first(['currency-list'], ['list' => $list]);
    }

}

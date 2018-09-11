<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class Index extends Controller {

    /**
     * Index page.
     *
     * @return \Illuminate\Http\Response
     */
    public function index() {
        return view('index');
    }

}

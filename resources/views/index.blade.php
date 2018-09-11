<!doctype html>
<html class="no-js" lang="{{ app()->getLocale() }}">
    <head>
        @include('head')
    </head>
    <body>
        <div id="wrap" class="layout-2 green">
            {!! app()->widget->topnavbar() !!}
            <header>
                <div class="container">
                    <div class="logo"> <a href="/"><img src="images/logo-2.png" alt="" ></a> </div>
                    {!! app()->widget->topsearch() !!}
                    {!! app()->widget->cart() !!}
                </div>
                <nav class="navbar ownmenu">
                    <div class="container">
                        <div class="cate-lst"> <a  data-toggle="collapse" class="cate-style" href="/#cater"><i class="fa fa-list-ul"></i> Каталог </a></div>
                        <div class="navbar-header">
                            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#nav-open-btn" aria-expanded="false"> <span><i class="fa fa-navicon"></i></span> </button>
                        </div>
                        {!! app()->widget->topmenu() !!}
                        <div class="nav-right"> 
                            <span class="call-mun">
                                <i class="fa fa-phone"></i> <strong>Телефон:</strong> {!! app()->chunk->get('phone') !!}
                            </span> 
                        </div>
                    </div>
                </nav>
            </header>
            <section class="slid-sec">
                <div class="container">
                    <div class="container-fluid">
                        <div class="row">
                            {!! app()->widget->leftmenu() !!}
                            {!! app()->widget->mainslider() !!}
                        </div>
                    </div>
                </div>
            </section>
            <div id="content">
                @include('special-products')
                @include('shipping-info')
                @include('block-news')
            </div>
            @include('footer')
            <div class="rights">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-12">
                            <p>© {{ date('Y') }}</p>
                        </div>
                    </div>
                </div>
            </div>
            <a href="#" class="cd-top"><i class="fa fa-angle-up"></i></a> 
        </div>
    </body>
</html>
<div class="col-md-3 no-padding">
    <div class="cate-bar-in margin-top-0">
        <div id="cater" class="collapsed in">
            <ul>
                @foreach ($list as $item)
                @if (isset($item['children']))
                <li class="sub-menu">
                    <a href="{{ url('/catalog/'.$item['slug']) }}"> {{$item['title']}}</a>
                    <ul>
                        @foreach ($item['children'] as $child)
                        <li><a href="{{ url('/catalog/'.$item['slug'].'/'.$child['slug']) }}"> {{$child['title']}}</a></li>
                        @endforeach
                    </ul>
                </li>
                @else
                <li>
                    <a href="{{ url('/catalog/'.$item['slug']) }}"> {{$item['title']}}</a>
                </li>
                @endif
                @endforeach
            </ul>
        </div>
    </div>
</li>
</div>
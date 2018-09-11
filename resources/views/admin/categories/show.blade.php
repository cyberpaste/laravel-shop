@extends('layouts.backend')

@section('content')
<div class="container">
    <div class="row">
        @include('admin.sidebar')

        <div class="col-md-9">
            <div class="card">
                <div class="card-header">Категория: {{ $category->title }}</div>
                <div class="card-body">

                    <a href="{{ url('/admin/categories') }}" title="Назад"><button class="btn btn-warning btn-sm"><i class="fa fa-arrow-left" aria-hidden="true"></i> Назад</button></a>
                    <a href="{{ url('/admin/categories/' . $category->id . '/edit') }}" title="Редактировать категорию"><button class="btn btn-primary btn-sm"><i class="fa fa-pencil-square-o" aria-hidden="true"></i> Редактировать</button></a>
                    {!! Form::open([
                    'method'=>'DELETE',
                    'url' => ['admin/categories', $category->id],
                    'style' => 'display:inline'
                    ]) !!}
                    {!! Form::button('<i class="fa fa-trash-o" aria-hidden="true"></i> Удалить', array(
                    'type' => 'submit',
                    'class' => 'btn btn-danger btn-sm',
                    'title' => 'Удалить категорию',
                    'onclick'=>'return confirm("Подтвердить удаление?")'
                    ))!!}
                    {!! Form::close() !!}
                    <br/>
                    <br/>

                    <div class="table-responsive">
                        <table class="table">
                            <tbody>
                                <tr>
                                    <th>ID</th><td>{{ $category->id }}</td>
                                </tr>
                                <tr>
                                    <th> Родитель </th>
                                    <td> {{ $list[$category->parent_id] }} </td>
                                </tr>
                                <tr>
                                    <th> Название </th>
                                    <td> {{ $category->title }} </td>
                                </tr>
                                <tr>
                                    <th> Картинка </th>
                                    <td>
                                        @if ($image)
                                        <img src="{{$image['square400_dir']}}">
                                        @endif
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>

                </div>
            </div>
        </div>
    </div>
</div>
@endsection

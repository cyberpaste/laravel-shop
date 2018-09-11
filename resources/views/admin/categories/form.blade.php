<div class="form-group{{ $errors->has('parent_id') ? 'has-error' : ''}}">
    {!! Form::label('parent_id', 'Родительская категория', ['class' => 'control-label']) !!}
    {!! Form::select('parent_id', $list, isset($category->parent_id) ? $category->parent_id : 0, ['class' => 'form-control', 'multiple' => false]) !!}
    {!! $errors->first('parent_id', '<p class="help-block">:message</p>') !!}
</div>
<div class="form-group{{ $errors->has('title') ? 'has-error' : ''}}">
    {!! Form::label('title', 'Название', ['class' => 'control-label']) !!}
    {!! Form::text('title', null, ('required' == 'required') ? ['class' => 'form-control', 'required' => 'required'] : ['class' => 'form-control']) !!}
    {!! $errors->first('title', '<p class="help-block">:message</p>') !!}
</div>
<div class="form-group{{ $errors->has('slug') ? 'has-error' : ''}}">
    {!! Form::label('slug', 'Ссылка', ['class' => 'control-label']) !!}
    {!! Form::text('slug', null, ('required' == 'required') ? ['class' => 'form-control', 'required' => 'required'] : ['class' => 'form-control']) !!}
    {!! $errors->first('slug', '<p class="help-block">:message</p>') !!}
</div>
<div class="form-group">
    @if (!empty($image))
    <img src="{{$image['square400_dir']}}">
    @endif
</div>
<div class="form-group{{ $errors->has('image') ? 'has-error' : ''}}">
    {!! Form::label('image', 'Картинка', ['class' => 'control-label']) !!}
    {!! Form::file('image', null, ('' == 'required') ? ['class' => 'form-control', 'required' => 'required'] : ['class' => 'form-control']) !!}
    {!! $errors->first('image', '<p class="help-block">:message</p>') !!}
</div>
<div class="form-group{{ $errors->has('order') ? 'has-error' : ''}}">
    {!! Form::label('order', 'Сортировка', ['class' => 'control-label']) !!}
    {!! Form::number('order', null, ('' == 'required') ? ['class' => 'form-control', 'required' => 'required'] : ['class' => 'form-control']) !!}
    {!! $errors->first('order', '<p class="help-block">:message</p>') !!}
</div>


<div class="form-group">
    {!! Form::submit($formMode === 'edit' ? 'Обновить' : 'Создать', ['class' => 'btn btn-primary']) !!}
</div>

<select class="selectpicker">
    @foreach ($list as $item)
    <option value="">{{ $item->slug }}</option>
    @endforeach
</select>


@extends('layouts.helloapp')
@section('title', 'Add')
@section('menubar')
@parent
来店登録ページ
@endsection
@section('content')
<table>
    <form action="/visitors/add" method="post">
        {{csrf_field()}}
        <tr>
            <th>ロッカーNo: </th>
            <td>
                <select name="locker_code">
                    @foreach($lockers as $item => $locker_name)
                    <option value="{{ $item }}">{{$locker_name}}</option>
                    @endforeach
                </select>
            </td>
        </tr>
        <tr>
            <th>値引き等オプション: </th>
            <td>
                @foreach($opps as $opp => $key2)
                <input type="checkbox" name="opps[]" value="{{$opp}}">{{$key2}}　
                <!--<option value="{{ $item }}">{{$locker_name}}</option>-->
                @endforeach
            </td>
        </tr>
        <tr><th>備考: </th><td><textarea rows="5" cols="60" name="remarks"></textarea></td></tr>
        <tr><th></th><td><input type="submit" value="send"></td></tr>

    </form>
</table>
@endsection
@section('footer')
copyright 2019 morishita
@endsection

  @extends('layouts.main')

  @section('container')
  <h1>Halaman About</h1>
  <h3>{{$name}}  </h3>
  <p>{{$email}}</p>
  <img width="200" src="img/{{$image}}" alt="">
  @endsection
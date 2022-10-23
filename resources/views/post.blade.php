@extends('layouts.main')

@section('container')
  <h2>{{$post->title}}</h2>
  <p>By. <a href="#" class="text-decoration-none">{{$post->user->name}}</a> in <a class="text-decoration-none" href="/categories/{{ $post->category->slug }}">{{$post->category->name}}</a></p>
  {!! $post->body !!}

  <a class="d-block mt-5" href="/blog">Back To Posts</a>
@endsection
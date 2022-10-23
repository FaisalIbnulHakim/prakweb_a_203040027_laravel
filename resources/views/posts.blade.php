@extends('layouts.main')

@section('container')
<h1 class="mb-5">Halaman Blog</h1>
  @foreach ($posts as $post)
  <article class="mb-5 border-bottom pb-4">
    <h2>
      <a href="/posts/{{$post->slug}}" class="text-decoration-none">{{$post->title}}</a>
      <p>By. <a href="/authors/{{$post->author->username}}" class="text-decoration-none">{{$post->author->name}}</a> in <a class="text-decoration-none" href="/categories/{{ $post->category->slug }}">{{$post->category->name}}</a></p>
    </h2>
    <p>{{$post->excerpt}}</p>
    <a class="text-decoration-none" href="posts/{{$post->slug}}">Read More</a>
  </article>    
  @endforeach
@endsection 
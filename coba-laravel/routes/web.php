<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('home', [
        "title" => "Home"
    ]);
});

Route::get('/about', function () {
    return view('about', [
        "name" => "Faisal Ibnul Hakim",
        "email" => "faisalhakim081@gmail.com",
        "image" => "fiuls.png",
        "title" => "About"
    ]);
});

Route::get('/blog', function () {
    $blog_posts = [
        [
            "title" => "Judul Post Pertama",
            "slug" => "judul-post-pertama",
            "author" => "Fiuls",
            "body" => "Lorem ipsum dolor sit, amet consectetur adipisicing elit. Quia dignissimos animi eaque aspernatur officiis deserunt ipsum dolorum nemo suscipit assumenda amet rerum praesentium, esse iure beatae, autem, eos distinctio fuga magni aliquam. Neque, iste tenetur voluptatibus quos itaque unde mollitia iusto, vero laborum doloremque asperiores, suscipit quae necessitatibus? Ipsum, officia esse eligendi quis ut suscipit, voluptates, dignissimos id saepe quae voluptatibus corrupti neque minus facere quam? Laudantium, expedita veniam necessitatibus voluptatibus, pariatur minima, quia et sint nesciunt tempora nulla ipsum?"
        ],
        [
            "title" => "Judul Post Kedua",
            "slug" => "judul-post-kedua",
            "author" => "Icong",
            "body" => "Lorem ipsum dolor sit, amet consectetur adipisicing elit. Quia dignissimos animi eaque aspernatur officiis deserunt ipsum dolorum nemo suscipit assumenda amet rerum praesentium, esse iure beatae, autem, eos distinctio officia esse eligendi quis ut suscipit, voluptates, dignissimos id saepe quae voluptatibus corrupti neque minus facere quam? Laudantium, expedita veniam necessitatibus voluptatibus, pariatur minima, quia et sint nesciunt tempora nulla ipsum? fuga magni aliquam. Neque, iste tenetur voluptatibus quos itaque unde mollitia iusto, vero laborum doloremque asperiores, suscipit quae necessitatibus? Ipsum, officia esse eligendi quis ut suscipit, voluptates, dignissimos id saepe quae voluptatibus corrupti neque minus facere quam? Laudantium, expedita veniam necessitatibus voluptatibus, pariatur minima, quia et sint nesciunt tempora nulla ipsum?"
        ]
    ];
    return view('posts', [
        "title" => "Posts",
        "posts" => $blog_posts
    ]);
});

Route::get('posts/{slug}', function ($slug) {
    $blog_posts = [
        [
            "title" => "Judul Post Pertama",
            "slug" => "judul-post-pertama",
            "author" => "Fiuls",
            "body" => "Lorem ipsum dolor sit, amet consectetur adipisicing elit. Quia dignissimos animi eaque aspernatur officiis deserunt ipsum dolorum nemo suscipit assumenda amet rerum praesentium, esse iure beatae, autem, eos distinctio fuga magni aliquam. Neque, iste tenetur voluptatibus quos itaque unde mollitia iusto, vero laborum doloremque asperiores, suscipit quae necessitatibus? Ipsum, officia esse eligendi quis ut suscipit, voluptates, dignissimos id saepe quae voluptatibus corrupti neque minus facere quam? Laudantium, expedita veniam necessitatibus voluptatibus, pariatur minima, quia et sint nesciunt tempora nulla ipsum?"
        ],
        [
            "title" => "Judul Post Kedua",
            "slug" => "judul-post-kedua",
            "author" => "Icong",
            "body" => "Lorem ipsum dolor sit, amet consectetur adipisicing elit. Quia dignissimos animi eaque aspernatur officiis deserunt ipsum dolorum nemo suscipit assumenda amet rerum praesentium, esse iure beatae, autem, eos distinctio officia esse eligendi quis ut suscipit, voluptates, dignissimos id saepe quae voluptatibus corrupti neque minus facere quam? Laudantium, expedita veniam necessitatibus voluptatibus, pariatur minima, quia et sint nesciunt tempora nulla ipsum? fuga magni aliquam. Neque, iste tenetur voluptatibus quos itaque unde mollitia iusto, vero laborum doloremque asperiores, suscipit quae necessitatibus? Ipsum, officia esse eligendi quis ut suscipit, voluptates, dignissimos id saepe quae voluptatibus corrupti neque minus facere quam? Laudantium, expedita veniam necessitatibus voluptatibus, pariatur minima, quia et sint nesciunt tempora nulla ipsum?"
        ]
    ];
    foreach ($blog_posts as $post) {
        if ($post["slug"] === $slug) {
            $new_post = $post;
        }
    }
    return view('post', [
        "title" => "Single Post",
        "post" => $new_post
    ]);
});

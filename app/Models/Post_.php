<?php

namespace App\Models;


class Post
{
    private static $blog_posts =
    [
        [
            "title" => "Judul Post Pertama",
            "slug" => "judul-post-pertama",
            "author" => "Icong",
            "body" => "Lorem ipsum dolor sit, amet consectetur adipisicing elit. Quia dignissimos animi eaque aspernatur officiis deserunt ipsum dolorum nemo suscipit assumenda amet rerum praesentium, esse iure beatae, autem, eos distinctio fuga magni aliquam. Neque, iste tenetur voluptatibus quos itaque unde mollitia iusto, vero laborum doloremque asperiores, suscipit quae necessitatibus? Ipsum, officia esse eligendi quis ut suscipit, voluptates, dignissimos id saepe quae voluptatibus corrupti neque minus facere quam? Laudantium, expedita veniam necessitatibus voluptatibus, pariatur minima, quia et sint nesciunt tempora nulla ipsum?"
        ],
        [
            "title" => "Judul Post Kedua",
            "slug" => "judul-post-kedua",
            "author" => "Fiuls",
            "body" => "Lorem ipsum dolor sit, amet consectetur adipisicing elit. Quia dignissimos animi eaque aspernatur officiis deserunt ipsum dolorum nemo suscipit assumenda amet rerum praesentium, esse iure beatae, autem, eos distinctio officia esse eligendi quis ut suscipit, voluptates, dignissimos id saepe quae voluptatibus corrupti neque minus facere quam? Laudantium, expedita veniam necessitatibus voluptatibus, pariatur minima, quia et sint nesciunt tempora nulla ipsum? fuga magni aliquam. Neque, iste tenetur voluptatibus q uos itaque unde mollitia iusto, vero laborum doloremque asperiores, suscipit quae necessitatibus? Ipsum, officia esse eligendi quis ut suscipit, voluptates, dignissimos id saepe quae voluptatibus corrupti neque minus facere quam? Laudantium, expedita veniam necessitatibus voluptatibus, pariatur minima, quia et sint nesciunt tempora nulla ipsum?"
        ]
    ];

    public static function all()
    {
        return collect(self::$blog_posts);
    }
    public static function find($slug)
    {
        $posts = static::all();

        return $posts->firstWhere('slug', $slug);
    }
}

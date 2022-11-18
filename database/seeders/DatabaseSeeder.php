<?php

namespace Database\Seeders;

// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use App\Models\User;
use App\Models\Category;
use App\Models\Post;
use Illuminate\Database\Seeder;


class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {


        // \App\Models\User::factory()->create([
        //     'name' => 'Test User',
        //     'email' => 'test@example.com',
        // ]);
        User::create([
            'name' => 'Fiuls',
            'username' => 'fiuls',
            'email' => 'fiuls@gmail.com',
            'password' => bcrypt('12345')
        ]);
        // User::create([
        //     'name' => 'Hakim',
        //     'email' => 'hakim@gmail.com',
        //     'password' => bcrypt('12345')
        // ]);
        User::factory(3)->create();
        Category::create([
            'name' => 'Web Programming',
            'slug' => 'web-programming'
        ]);
        Category::create([
            'name' => 'Web Design',
            'slug' => 'web-design'
        ]);
        Category::create([
            'name' => 'Personal',
            'slug' => 'personal'
        ]);
        Post::factory(20)->create();
        // Post::create([
        //     'title' => 'Judul Kesatu',
        //     'slug' => 'judul-kesatu',
        //     'excerpt' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Natus, repellendus.',
        //     'body' => 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Corrupti modi, praesentium ratione quis rerum iure eos cupiditate! Vero doloremque ipsam eligendi amet sed ut, officiis illo. Praesentium placeat ea pariatur, aperiam architecto tempore quas ducimus, necessitatibus sed quae sint! Omnis inventore, ad est veniam aut sit numquam in sunt magnam tempora voluptates corporis pariatur perferendis, blanditiis libero ipsa et aperiam? Repudiandae quisquam enim quae facere vero id nisi incidunt, placeat quidem et, non amet expedita dolor quo, temporibus perferendis porro doloribus suscipit aliquid. Magni est fuga fugiat suscipit consequuntur vel quasi laborum itaque ipsam autem exercitationem pariatur, voluptas qui dolor!',
        //     'category_id' => 1,
        //     'user_id' => 1
        // ]);
        // Post::create([
        //     'title' => 'Judul Kedua',
        //     'slug' => 'judul-kedua',
        //     'excerpt' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Natus, repellendus.',
        //     'body' => 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Corrupti modi, praesentium ratione quis rerum iure eos cupiditate! Vero doloremque ipsam eligendi amet sed ut, officiis illo. Praesentium placeat ea pariatur, aperiam architecto tempore quas ducimus, necessitatibus sed quae sint! Omnis inventore, ad est veniam aut sit numquam in sunt magnam tempora voluptates corporis pariatur perferendis, blanditiis libero ipsa et aperiam? Repudiandae quisquam enim quae facere vero id nisi incidunt, placeat quidem et, non amet expedita dolor quo, temporibus perferendis porro doloribus suscipit aliquid. Magni est fuga fugiat suscipit consequuntur vel quasi laborum itaque ipsam autem exercitationem pariatur, voluptas qui dolor!',
        //     'category_id' => 1,
        //     'user_id' => 1
        // ]);
        // Post::create([
        //     'title' => 'Judul Ketiga',
        //     'slug' => 'judul-ketiga',
        //     'excerpt' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Natus, repellendus.',
        //     'body' => 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Corrupti modi, praesentium ratione quis rerum iure eos cupiditate! Vero doloremque ipsam eligendi amet sed ut, officiis illo. Praesentium placeat ea pariatur, aperiam architecto tempore quas ducimus, necessitatibus sed quae sint! Omnis inventore, ad est veniam aut sit numquam in sunt magnam tempora voluptates corporis pariatur perferendis, blanditiis libero ipsa et aperiam? Repudiandae quisquam enim quae facere vero id nisi incidunt, placeat quidem et, non amet expedita dolor quo, temporibus perferendis porro doloribus suscipit aliquid. Magni est fuga fugiat suscipit consequuntur vel quasi laborum itaque ipsam autem exercitationem pariatur, voluptas qui dolor!',
        //     'category_id' => 2,
        //     'user_id' => 1
        // ]);
        // Post::create([
        //     'title' => 'Judul Keempat',
        //     'slug' => 'judul-keempat',
        //     'excerpt' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Natus, repellendus.',
        //     'body' => 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Corrupti modi, praesentium ratione quis rerum iure eos cupiditate! Vero doloremque ipsam eligendi amet sed ut, officiis illo. Praesentium placeat ea pariatur, aperiam architecto tempore quas ducimus, necessitatibus sed quae sint! Omnis inventore, ad est veniam aut sit numquam in sunt magnam tempora voluptates corporis pariatur perferendis, blanditiis libero ipsa et aperiam? Repudiandae quisquam enim quae facere vero id nisi incidunt, placeat quidem et, non amet expedita dolor quo, temporibus perferendis porro doloribus suscipit aliquid. Magni est fuga fugiat suscipit consequuntur vel quasi laborum itaque ipsam autem exercitationem pariatur, voluptas qui dolor!',
        //     'category_id' => 2,
        //     'user_id' => 2
        // ]);
    }
}

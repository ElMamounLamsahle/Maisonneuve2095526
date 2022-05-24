<?php

namespace App\Http\Controllers;

use App\Models\Article;
use Illuminate\Http\Request;
use Auth;

class ArticleController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $posts = Article::getArticles();
        return view('article.index',
            array(
                'posts' => $posts
            )
        );
    }

    /**
     * Display a listing of my resources.
     *
     * @return \Illuminate\Http\Response
    */
    public function my_posts()
    {
        $posts = Article::getMyArticles();
        return view('article.my',
            array(
                'posts' => $posts
            )
        );
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('article.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $request->validate(
            array(
                'titre_en' => 'required|max:255|min:2',
                'titre_fr' => 'required|max:255|min:2',
                'contenu_en' => 'required|min:2',
                'contenu_fr' => 'required|min:2'
            )
        );
        $post = new Article;
        $post->fill($request->all());
        $post->user_id = Auth::user()->id;
        $post->save();
        return redirect(route('articles'));
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Article  $article
     * @return \Illuminate\Http\Response
     */
    public function show(Article $article)
    {
        $post = Article::getArticle($article->id);
        return view('article.show',
            array(
                'post' => $post
            )
        );
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Article  $article
     * @return \Illuminate\Http\Response
     */
    public function edit(Article $article)
    {
        return view('article.edit',
            array(
                'post' => $article
            )
        );
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Article  $article
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Article $article)
    {
        $request->validate(
            array(
                'titre_en' => 'required|max:255|min:2',
                'titre_fr' => 'required|max:255|min:2',
                'contenu_en' => 'required|min:2',
                'contenu_fr' => 'required|min:2'
            )
        );
        $article->update(
            array(
                'titre_en' => $request->titre_en,
                'titre_fr' => $request->titre_fr,
                'contenu_en' => $request->contenu_en,
                'contenu_fr' => $request->contenu_fr
            )
        );
        return redirect(route('article.show',$article->id));
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Article  $article
     * @return \Illuminate\Http\Response
     */
    public function destroy(Article $article)
    {
        $article->delete();
        return redirect(route('articles'));
    }
}

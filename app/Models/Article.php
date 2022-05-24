<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use DB;
use Auth;

class Article extends Model
{
    use HasFactory;

    /**
     * The attributes that are mass assignable.
     *
     * @var array<int, string>
    */
    protected $fillable = [
        'titre_en',
        'titre_fr',
        'contenu_en',
        'contenu_fr',
        'user_id'
    ];

    public function postHasUser() {
        return $this->hasOne('App\Models\User', 'id', 'user_id');
    }

    static public function getArticles() {
        $lg = "_en";
        if(session()->has('locale') &&  session()->get('locale') == 'fr'){
            $lg = "_fr";
        }
        $title = "(case when titre$lg is null then titre_en else titre$lg end) as titre";
        $content = "(case when contenu$lg is null then contenu_en else contenu$lg end) as contenu";
        $query = Article::Select('id', 'created_at', 'user_id', DB::raw($title. ',' .$content))
        ->OrderBy('created_at', 'DESC')
        ->get();
        return $query;
    }

    static public function getMyArticles() {
        $lg = "_en";
        if(session()->has('locale') &&  session()->get('locale') == 'fr'){
            $lg = "_fr";
        }
        $title = "(case when titre$lg is null then titre_en else titre$lg end) as titre";
        $content = "(case when contenu$lg is null then contenu_en else contenu$lg end) as contenu";
        $query = Article::Select('id', 'created_at', 'user_id', DB::raw($title. ',' .$content))
        ->where('user_id', Auth::user()->id)
        ->OrderBy('created_at', 'DESC')
        ->get();
        return $query;
    }

    static public function getArticle($id) {
        $lg = "_en";
        if(session()->has('locale') &&  session()->get('locale') == 'fr'){
            $lg = "_fr";
        }
        $title = "(case when titre$lg is null then titre_en else titre$lg end) as titre";
        $content = "(case when contenu$lg is null then contenu_en else contenu$lg end) as contenu";
        $query = Article::Select('id', 'created_at', 'user_id', DB::raw($title. ',' .$content))
        ->where('id', '=', $id)
        ->get();
        return $query[0];
    }


}

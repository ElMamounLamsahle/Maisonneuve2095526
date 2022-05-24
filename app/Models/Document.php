<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use DB;
use Auth;

class Document extends Model
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
        'fichier',
        'extension',
        'user_id'
    ];

    public function documentHasUser() {
        return $this->hasOne('App\Models\User', 'id', 'user_id');
    }

    static public function getDocuments() {
        $lg = "_en";
        if(session()->has('locale') &&  session()->get('locale') == 'fr'){
            $lg = "_fr";
        }
        $title = "(case when titre$lg is null then titre_en else titre$lg end) as titre";
        $query = Document::Select('id', 'extension', 'created_at', 'user_id', DB::raw($title))
        ->OrderBy('created_at', 'DESC')
        ->get();
        return $query;
    }

    static public function getMyDocuments() {
        $lg = "_en";
        if(session()->has('locale') &&  session()->get('locale') == 'fr'){
            $lg = "_fr";
        }
        $title = "(case when titre$lg is null then titre_en else titre$lg end) as titre";
        $query = Document::Select('id', 'extension', 'created_at', 'user_id', DB::raw($title))
        ->where('user_id', Auth::user()->id)
        ->OrderBy('created_at', 'DESC')
        ->get();
        return $query;
    }

}

<?php

namespace App\Http\Controllers;

use App\Models\Document;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use Auth;

class DocumentController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $documents = Document::getDocuments();
        return view('document.index',
            array(
                'documents' => $documents
            )
        );
    }

    /**
     * Display a listing of my resources.
     *
     * @return \Illuminate\Http\Response
     */
    public function my_documents()
    {
        $documents = Document::getMyDocuments();
        return view('document.my',
            array(
                'documents' => $documents
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
        return view('document.create');
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
                'fichier'  => 'required|mimes:pdf,zip,doc,docx',
            )
        );
        $extension = $request->file('fichier')->getClientOriginalExtension();
        $fileName = sha1($request->titre_en.time()). '.' .$extension;//générer un nom du fichier
        $request->file('fichier')->storeAs("public/uploads", $fileName);
        $document = new Document;
        $document->fill($request->all());
        $document->user_id = Auth::user()->id;
        $document->fichier = $fileName;
        $document->extension = $extension;
        $document->save();
        return redirect(route('documents'));
    }

    /**
     * Download file from storage.
     *
     * @param  \App\Models\Document $document
     * @return \Illuminate\Http\Response
    */
    public function download(Document $document) {
        $file = storage_path('app/public/uploads/'.$document->fichier);;
        return response()->download($file);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Document  $document
     * @return \Illuminate\Http\Response
     */
    public function edit(Document $document)
    {
        return view('document.edit',
            array(
                'document' => $document
            )
        );
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Document  $document
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Document $document)
    {
        $request->validate(
            array(
                'titre_en' => 'required|max:255|min:2',
                'titre_fr' => 'required|max:255|min:2',
                'fichier'  => 'required|mimes:pdf,zip,doc,docx',
            )
        );
        Storage::delete('public/uploads/' .$document->fichier);
        $extension = $request->file('fichier')->getClientOriginalExtension();
        $fileName = sha1($request->titre_en.time()). '.' .$extension;//générer un nom du fichier
        $request->file('fichier')->storeAs("public/uploads", $fileName);
        $document->update(
            array(
                'titre_en' => $request->titre_en,
                'titre_fr' => $request->titre_fr,
                'fichier'  => $fileName,
                'extension' => $extension
            )
        );
        return redirect(route('documents'));
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Document  $document
     * @return \Illuminate\Http\Response
     */
    public function destroy(Document $document)
    {
        $document->delete();
        Storage::delete('public/uploads/' .$document->fichier);
        return redirect(route('documents'));
    }
}

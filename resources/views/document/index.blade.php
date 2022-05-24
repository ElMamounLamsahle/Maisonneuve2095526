@extends('layouts.app')
@section('title','Maisonneuve - ' .trans('lang.text_heading_documents'))
@section('heading-title', trans('lang.text_heading_documents'))
@section('heading-route',route('document.create'))
@section('heading-btn-text', trans('lang.text_heading_new_document'))
@section('content')
    @if(count($documents) > 0)
        <table class="table table-striped table-responsive">
            <thead>
                <tr class="text-center">
                    <th style="width: 30%" scope="col">@lang('lang.text_table_title')</th>
                    <th style="width: 10%" scope="col">@lang('lang.text_table_extension')</th>
                    <th style="width: 25%" scope="col">@lang('lang.text_table_added_by')</th>
                    <th style="width: 20%" scope="col">@lang('lang.text_table_date_add')</th>
                    <th style="width: 15%" scope="col"></th>
                </tr>
            </thead>
            <tbody>
                @foreach($documents as $document)
                    <tr class="align-middle">
                        <td>{{ $document->titre }}</td>
                        <td class="text-center">{{ $document->extension }}</td>
                        <td>{{ $document->documentHasUser->nom }}</td>
                        <td class="text-center">{{ $document->created_at->format('Y/m/d H:i:s') }}</td>
                        <td>
                            <a href="{{ route('document.download', $document->id) }}" class="btn btn-sm btn-outline-success m-2"><i class="bi bi-download"></i></a>
                            @if(Auth::user() && Auth::user()->id == $document->user_id)
                                <a href="{{ route('document.edit', $document->id) }}" class="btn btn-sm btn-outline-primary m-2"><i class="bi bi-pencil-square"></i></i></a>
                                <button type="button" class="btn btn-sm btn-outline-danger m-2" data-bs-toggle="modal" data-bs-target="#deleteModal{{ $document->id }}">
                                    <i class="bi bi-x-square"></i>
                                </button>
                                <div class="modal fade" id="deleteModal{{ $document->id }}" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                    <div class="modal-dialog">
                                        <div class="modal-content">
                                            <div class="modal-header">
                                                <h5 class="modal-title" id="exampleModalLabel">@lang('lang.text_dialog_document_title')</h5>
                                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                            </div>
                                            <div class="modal-body">
                                                @lang('lang.text_dialog_document_body')
                                            </div>
                                            <div class="modal-footer">
                                                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">@lang('lang.text_cancel')</button>
                                                <form action="{{ route('document.delete', $document->id) }}" method="post">
                                                    @csrf
                                                    @method('DELETE')
                                                    <button class="btn btn-danger">@lang('lang.text_delete')</button>
                                                </form>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            @endif
                        </td>
                    </tr>
                @endforeach
            </tbody>
        </table>

    @else
        <p class="alert alert-danger">@lang('lang.text_alert_no_document')</p>
    @endif
@endsection

@extends('backend.layouts.app')
@section('content')

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>

<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Social Setting</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="{{ route('admin_home') }}"><- Go To Home</a></li>
              <li class="breadcrumb-item active">DataTables</li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
            <div class="row">
                <div class="col-12">
                    
                        <!-- /.card-header -->
                        <div class="card-body">
                            <div class="modal-content">
                                <div class="modal-header">
                                  <h4 class="modal-title">Insert Social Link</h4>
                                 
                                </div>
                                <div class="modal-body">
                                    <form action="{{ route('social.store') }}" method="post" enctype="multipart/form-data">
                                        @csrf
                    
                                        <div class="card-body">
                    
                                            <div class="form-group">
                                                <label for="">Facebook</label>
                                                <input type="text" name="facebook" class="form-control">
                                            </div>

                                            <div class="form-group">
                                                <label for="">Twitter</label>
                                                <input type="text" name="twitter" class="form-control">
                                            </div>

                                            <div class="form-group">
                                                <label for="">Youtube</label>
                                                <input type="text" name="youtube" class="form-control">
                                            </div>

                                            <div class="form-group">
                                                <label for="">Instagram</label>
                                                <input type="text" name="instagram" class="form-control">
                                            </div>

                                            <div class="form-group">
                                                <label for="">Linkedin</label>
                                                <input type="text" name="linkedin" class="form-control">
                                            </div>
        
                                            <div class="card-footer">
                                                <button type="submit" class="btn btn-primary">Store</button>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                              </div>
                        </div>
                        <!-- /.card-body -->
                     
                </div>
            </div>
        </div>
    </section>
  </div>

@endsection
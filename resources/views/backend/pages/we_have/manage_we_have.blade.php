
@extends('backend.layouts.app')
@section('content')

<!-- Add this in your <head> section for Bootstrap Icons -->
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css">

  <!-- Add this in your <head> section for Font Awesome -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
  

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>

<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Our Projects Status Table</h1>
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
                    <div class="card">
                        <div class="card-header">
                          <h3 class="card-title">All Projects Status</h3>
                          <button class="btn btn-info btn-sm" style="float: right" data-toggle="modal" data-target="#modal-default"> + Add Work Status</button>
                        </div>
                        <!-- /.card-header -->
                        <div class="card-body">
                          <table id="example1" class="table table-bordered table-striped table-sm">
                            <thead>
                                <tr>
                                    <th>SL</th>
                                    <th>Icon</th>
                                    <th>Title</th>
                                    <th>total</th>
                                    <th>Status</th>
                                    <th>Action</th>
                                </tr>
                            </thead>
                            <tbody>

                                @foreach ($project_status as $key=>$row)
                                    <tr>
                                        <td>{{++$key}}</td>
                                        <td><i class="{{ $row->icon }} color-blue flex-shrink-0" style="height: 40px; width:60px"></i></td>
                                        <td>{{$row->title ?? ''}}</td>
                                        <td>{{$row->total ?? ''}}</td>
                                       
                                        <td>
                                          @if ($row->status == '1')
                                          
                                          <a href="{{ route('we_have.status',$row->id) }}" class="btn btn-success btn-xs" style="width:100px;"> Active </a>
                                          @else
                                          
                                          <a href="{{ route('we_have.status',$row->id) }}" class="btn btn-primary btn-xs" style="width:100px;"> Deactive </a>
                                          @endif
                                      </td>
                                       
                                        <td>
                                            
                                            <a href="#" class="btn btn-info btn-sm edit" title="Edit Data"><i class="fas fa-edit"></i></a>
                                            <a href="{{ route('we_have.delete',$row->id) }}" id="delete" class="btn btn-danger btn-sm delete" title="Delete Data"><i class="fas fa-trash-alt"></i></a>
                                        </td>
                                    </tr>
                                @endforeach

                            </tbody>
                          </table>
                        </div>
                        <!-- /.card-body -->
                      </div>
                </div>
            </div>
        </div>
    </section>
  </div>

{{-- Category Added Modal --}}
    <div class="modal fade" id="modal-default">
        <div class="modal-dialog">
          <div class="modal-content">
            <div class="modal-header">
              <h4 class="modal-title">Insert New Work Activist</h4>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>
            <div class="modal-body">
                <form action="{{ route('we_have.store') }}" method="post" enctype="multipart/form-data">
                    @csrf

                    <div class="card-body">

                        

                        <div class="form-group">
                            <label for="">Work Title <span class="text-danger">*</span></label>
                            <input type="text" name="title" class="form-control" value="{{old('title')}}" placeholder="Work Title">
                            @error('title')
                                <span class="text-danger">{{ $message }}</span>
                            @enderror
                        </div>

                        <div class="form-group">
                            <label for="">Work Total <span class="text-danger">*</span></label>
                            <input type="text" name="total" class="form-control" value="{{old('total')}}" placeholder="Work total">
                            @error('total')
                                <span class="text-danger">{{ $message }}</span>
                            @enderror
                        </div>

                        <div class="form-group">
                            <label for="">Work Icon Link <span class="text-danger">*</span></label>
                            <input type="text" name="icon" class="form-control" value="{{old('icon')}}" placeholder="Work Icon Link">
                            @error('icon')
                                <span class="text-danger">{{ $message }}</span>
                            @enderror
                        </div>

                        <div class="row">
                          <div class="form-group col-lg-12">
                            <label for="exampleInputFile">Status<span class="text-danger">*</span></label>
                            <select name="status" id="" class="form-control">
                              <option value="0" selected disabled>== Choose Options ==</option>
                                
                                <option value="1">Yes</option>
                                <option value="0">No</option>
                                
                            </select>
                            @error('status')
                                <span class="text-danger">{{ $message }}</span>
                            @enderror
                          </div>
                        
                        </div>
   
                        <div class="card-footer">
                            <button type="submit" class="btn btn-primary">Submit</button>
                        </div>
                    </div>
                </form>
            </div>
          </div>
          <!-- /.modal-content -->
        </div>
        <!-- /.modal-dialog -->
      </div>


      <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
      <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/Dropify/0.2.2/js/dropify.js"></script>

      <script>
        $(function () {
          //Initialize Select2 Elements
          
      
          $("input[data-bootstrap-switch]").each(function(){
            $(this).bootstrapSwitch('state', $(this).prop('checked'));
          })
      
        })
        
      </script>

@endsection
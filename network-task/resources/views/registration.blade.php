@extends('layouts.master')

@section('pageTitle', 'Task-app | Register')

@section('content')

<div id="navSection">
    @include('layouts.header')
</div>

<div class="main_div">
    <div class="sub_div">

        <h3 class="text-center">User Registration</h3>
        <p class="text-center">Get started with your free account</p>
        <div>
            <form method="post" action="/createAccount">
            @csrf
              <div class="align-items-center">
                <div class="mt-4">
                  <div class="input-group mb-2">
                    <div class="input-group-prepend">
                      <div class="input-group-text"><i class="fa fa-user "></i></div>
                    </div>
                    <input type="text" name="username" class="form-control" placeholder="Full Name" required>
                  </div>
                </div>

                <div class="mt-3">
                  <div class="input-group mb-2">
                    <div class="input-group-prepend">
                        <div class="input-group-text"><i class="fa fa-google"></i></div>
                    </div>
                    <input type="email" name="email" class="form-control"  placeholder="E-mail" required>
                  </div>
                </div>

                <div class="mt-3">
                  <div class="input-group mb-2">
                    <div class="input-group-prepend">
                      <div class="input-group-text"><i class="fa fa-phone"></i></div>
                    </div>
                    <input type="number" name="contact" class="form-control"  placeholder="Phone Number" required>
                  </div>
                </div>

                <div class="mt-3">
                  <button type="submit" name="signup" class="form-control btn btn-primary mb-2">Register</button>
                </div>
              </div>
            </form>
        </div>
    </div>
</div>


<div id="footerSection">
    @include('layouts.footer')
</div>

@endsection



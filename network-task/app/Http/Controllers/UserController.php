<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;

class UserController extends Controller
{
    function index()
    {
        $data = User::all();
        return view('home',['details'=>$data]);
    }

    function createAccount(Request $request)
    {
        $user = new User;
        $user->name = $request->username;
        $user->email = $request->email;
        $user->contact = $request->contact;
        $user->save();

        if($user)
        {
            $num = User::where('pool_rank', '=', 1)->get();
            $rowCount1 = $num->count();
    
            if($rowCount1 == 14)
            {
                $id=1;
                $data = User::where('id',$id)->first();
                    if($data) 
                    {
                        $data->wallet = $data->wallet +  14;
                        $data->pool_rank = 2;
                        $data->save();
                    }
            }
            if ($rowCount1>14) {
                if(($rowCount1-14)%8 == 0)
                {
                    $id = (floor(($rowCount1-14)/8))+1;
                    $data = User::where('id',$id)->first();
                    if($data) 
                    {
                        $data->wallet = $data->wallet + 8;
                        $data->pool_rank = 2;
                        $data->save();
                    }
                }
            }
    
            $temp = User::where('pool_rank', '=', 2)->get();
            $rowCount2 = $temp->count();
    
            if($rowCount2 == 14)
            {
                $id=1;
                $data = User::where('id',$id)->first();
                    if($data) 
                    {
                        $data->wallet = $data->wallet +  14;
                        $data->pool_rank = 3;
                        $data->save();
                    }
            }
            if ($rowCount2>14) {
                if(($rowCount2-14)%8 == 0)
                {
                    $id = (floor(($rowCount1-14)/8))+1;
                    $data = User::where('id',$id)->first();
                    if($data) 
                    {
                        $data->wallet = $data->wallet + 8;
                        $data->pool_rank = 3;
                        $data->save();
                    }
                }
            }
        }
      

        return redirect('/');
    }
}

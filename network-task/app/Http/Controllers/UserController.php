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

    function createAccount()
    {
        for($i=1;$i<=7;$i++)
        {
            $user = new User;
            $user->name = "Saurabh";
            $user->email = "saurabh@gmail.com";
            $user->contact = "1000000000";
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
                            $data->wallet =  14;
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
                            $data->wallet = 8;
                            $data->pool_rank = 2;
                            $data->save();
                        }
                    }
                }

                $temp = User::where('pool_rank', '=', 2)->get();
                $rowCount2 = $temp->count();
                // dd($rowCount2);exit;
                if($rowCount2 == 14)
                {
                    $id=1;
                    $data = User::where('id',$id)->first();
                        if($data)
                        {
                            $data->wallet =   14;
                            $data->pool_rank = 3;
                            $data->save();
                        }
                }
                if ($rowCount2>14) {
                    if(($rowCount2-14)%8 == 0)
                    {
                        // dd((floor(($rowCount1-14)/8))+1);exit;
                        $id = (floor(($rowCount2-14)/8))+1;
                        $data = User::where('id',$id)->first();
                        if($data)
                        {
                            $data->wallet =  8;
                            $data->pool_rank = 3;
                            $data->save();
                        }
                    }
                }
            }
        }



        return redirect('/');
    }
}

<?php

namespace App\Http\Controllers\Api\v1;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class ApiController extends Controller
{
    /**
     * Method errorRespond
     *
     * To return Json Error Respond
     *
     * @param $data $data [explicite description]
     * @param $message $message [explicite description]
     *
     * @return void
     */
    public function errorRes($data, $message = null)
    {
        return response()->json([
            'data' => $data,
            'status' => 'error',
            'message' => $message,


        ]);
    }
    /**
     * Method successRespose
     *
     * To return Json Success Respond
     *
     * @param $data $data [explicite description]
     * @param $message $message [explicite description]
     *
     * @return void
     */
    public function successRes($data, $message = null)
    {
        return response()->json([
            'data' => $data,
            'status' => 'success',
            'message' => $message,


        ]);
    }
}

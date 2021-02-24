<?php

namespace App\Http\Controllers\Employee;

use Validator;
use App\Employee;
use App\Department;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Resources\EmployeeResource as http;

class EmployeeController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return http::collection(Employee::get());

        //        return response()->json(Employee::get(), 200);
    }
    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $rules = [
            'employee_id' => 'required|unique:departments',
            'description' => 'required'
        ];

        $validator = Validator::make($request->all(), $rules);

        if ($validator->fails()) {
            return response()->json($validator->errors(), 401);
        }
        $dept = Department::create($request->all());
        return response()->json(['message' => 'Record has been Created', 'Record Holder' => $dept], 201);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $employee = Employee::find($id);
        if (is_null($employee)) {
            $message = ['message' => 'Data not Found!'];
            return response()->json($message, 404);
        }
        return response()->json($employee, 200);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $employee = Employee::find($id);
        if (is_null($employee)) {
            $message = ['message' => 'Data not Found!'];
            return response()->json($message, 404);
        }
        $employee->update($request->all());
        return response()->json($employee, 200);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $employee = Employee::find($id);
        $employee->delete();
        return response()->json($employee, 200);
    }
}

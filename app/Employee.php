<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Employee extends Model
{

    protected $table = "employees";

    protected $fillable = ['employee_id', 'name', 'email', 'contact', 'cnic', 'dept_id', 'address'];

    public function dept()
    {
        return $this->belongsTo('App\Department');
    }
}

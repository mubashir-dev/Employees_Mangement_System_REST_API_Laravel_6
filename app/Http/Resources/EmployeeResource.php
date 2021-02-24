<?php

namespace App\Http\Resources;

use Illuminate\Http\Resources\Json\JsonResource;

class EmployeeResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return array
     */
    public function toArray($request)
    {
        return [
            'id' => $this->id,
            'employee_id' => $this->employee_id,
            'name' => $this->name,
            'email' => $this->email,
            'contact' => $this->contact,
            'cnic' => $this->cnic,
            'address' => $this->address,
            'dept' => $this->dept->title,
            'created_at' => (string) $this->created_at,
            'updated_at' => (string) $this->updated_at

        ];
    }
}

<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;


class Consultation extends Model
{
    use HasFactory;

    protected $table = 'consultation';
    protected $primaryKey = 'consultation_id';

    protected $fillable = [
        'consultation_client_name',
        'consultation_client_email',
        'consultation_client_phone_no',
        'consultation_service_name',
        'consultation_date',
        'consultation_time',
        'consultation_medical_info',
        'consultation_comments',
        'status',
    ];

    protected $hidden = [
        'consultation_id',
    ]; 
}

?>
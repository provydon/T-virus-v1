<?php

namespace App;

use DB;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Auth;
use Carbon\Carbon;

class Profession extends Model
{
    /**
     * The table associated with the model.
     *
     * @var string
     */
    protected $table = 'profession';
}
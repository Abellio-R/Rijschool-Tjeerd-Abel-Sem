<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Permission extends Model
{
    use HasFactory;

    public function role()
    {
        return $this->belongsToMany(Role::class, 'roles_permission', 'role_id', 'permission_id');
    }
}

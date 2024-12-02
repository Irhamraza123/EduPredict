<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;

class AnalystController extends Controller
{
    // Analyst dashboard
    public function index()
    {
        // Fetch counts by roles and campus for the analyst dashboard
        $total_user = User::count();
        $total_admin = User::where('role', 'admin')->count();
        $total_teacher = User::where('role', 'teacher')->count();
        $total_student = User::where('role', 'student')->count();
        $total_principle = User::where('role', 'principle')->count();

        // Fetch counts by campus for students
        $total_korangi_students = User::where('role', 'student')->where('campus', 'Korangi')->count();
        $total_munawar_students = User::where('role', 'student')->where('campus', 'munawar')->count();
        $total_online_academy_students = User::where('role', 'student')->where('campus', 'Online Academy')->count();
        $total_Islamabad_students = User::where('role', 'student')->where('campus', 'Islamabad')->count();

        // Pass the data to the analyst dashboard
        return view('analyst.dashboard', compact(
            'total_user',
            'total_admin',
            'total_teacher',
            'total_student',
            'total_principle',
            'total_korangi_students',
            'total_munawar_students',
            'total_online_academy_students',
            'total_Islamabad_students'
        ));
    }

    public function welcome()
    {
        // Fetch counts by roles for the welcome page
        $total_admin = User::where('role', 'admin')->count();
        $total_teacher = User::where('role', 'teacher')->count();
        $total_student = User::where('role', 'student')->count();
        $total_principle = User::where('role', 'principle')->count();

        // Fetch counts by campus for students
        $total_korangi_students = User::where('role', 'student')->where('campus', 'Korangi')->count();
        $total_munawar_students = User::where('role', 'student')->where('campus', 'munawar')->count();
        $total_online_academy_students = User::where('role', 'student')->where('campus', 'Online Academy')->count();
        $total_Islamabad_students = User::where('role', 'student')->where('campus', 'Islamabad')->count();

        // Pass the data to the welcome view
        return view('welcome', compact(
            'total_admin',
            'total_teacher',
            'total_student',
            'total_principle',
            'total_korangi_students',
            'total_munawar_students',
            'total_online_academy_students',
            'total_Islamabad_students'
        ));
    }
}
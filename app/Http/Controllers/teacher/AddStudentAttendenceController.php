<?php

namespace App\Http\Controllers\teacher;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\StudentAttendence;
use App\Models\StudentInformation;
use App\Models\User;
use Illuminate\Support\Facades\Auth;
use Carbon\Carbon;

class AddStudentAttendenceController extends Controller
{
    public function student_attendence(){
        // Get the campus of the logged-in teacher
        $user = Auth::user();
        $campus = $user->campus;

        // Fetch students only from the same campus
        $student_attendence = StudentInformation::with('user')
            ->whereHas('user', function ($query) use ($campus) {
                $query->where('campus', $campus);
            })
            ->get();

        return view('teacher.add_student_attendence', compact('student_attendence'));
    }

    private function recordattendence($student_id, $status){
        $date = Carbon::now()->toDateString();
        $day = Carbon::now()->format('l');
        $existingAttendance = StudentAttendence::where('student_id', $student_id)
            ->where('date', $date)
            ->first();

        if ($existingAttendance) {
            return redirect()->back()->with('error', 'Attendance for today has already been recorded.');
        }

        $attendence = new StudentAttendence();
        $attendence->student_id = $student_id;
        $attendence->status = $status;
        $attendence->date = $date;
        $attendence->day = $day;
        $attendence->save();
    }

    public function mark_present($student_id){
        $this->recordattendence($student_id, 'Present');
        return redirect()->back()->with('success', 'Marked as present.');
    }
    
    public function mark_absent($student_id){
        $this->recordattendence($student_id, 'Absent');
        return redirect()->back()->with('success', 'Marked as absent.');
    }
}

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@11/dist/sweetalert2.min.css">
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11/dist/sweetalert2.all.min.js"></script>

@include('student.tags')
@include('student.sidebar')
@include('student.navbar')

<div class="container-fluid pt-4 px-4">
    <div class="bg-light rounded p-4">
        <h6 class="mb-4">Student Table</h6>
        <div class="table-responsive">
            <table class="table table-bordered table-striped">
                <thead class="thead-dark">
                    <tr>
                        <th scope="col">Student Id</th>
                        <th scope="col">Student Name</th>
                        <th scope="col">Student Class</th>
                        <th scope="col">Student Campus</th>
                        <th scope="col">Start Date</th>
                        <th scope="col">End Date</th>
                        <th scope="col">Status</th>
                    </tr>
                </thead>
                <tbody>
                    @if ($show_freeze_details)
                        <tr>
                            <td>{{ $show_freeze_details->student_id ?? 'N/A' }}</td>
                            <td>{{ $show_freeze_details->name ?? 'N/A' }}</td>
                            <td>{{ $show_freeze_details->class ?? 'N/A' }}</td>
                            <td>{{ $show_freeze_details->campus ?? 'N/A' }}</td>
                            <td>{{ $show_freeze_details->start_date ?? 'N/A' }}</td>
                            <td>{{ $show_freeze_details->end_date ?? 'N/A' }}</td>
                            <td>{{ $show_freeze_details->status ?? 'N/A' }}</td>
                        </tr>
                    @else
                        <tr>
                            <td colspan="7" class="text-center">No Data Available</td>
                        </tr>
                    @endif
                </tbody>
            </table>
        </div>
    </div>
</div>
<!-- Table End -->

@include('student.footer')

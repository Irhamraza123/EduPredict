@include('student.tags')
@include('student.sidebar')
@include('student.navbar')

<div style="display: flex; flex-direction: column; align-items: center; min-height: 80vh; padding-top: 50px;">
    <div class="welcome-message" style="margin: auto; text-align: center;">
        <h2 style="font-size: 2em; color: #333; font-weight: bold;">Welcome to Student Panel</h2>
    </div>

</div>
@include('student.body')

@include('student.footer')

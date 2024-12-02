<body>
    <div class="container-xxl position-relative bg-white d-flex p-0">

        <!-- Sidebar Start -->
        <div class="sidebar pe-4 pb-3">
            <nav class="navbar navbar-light">
                <a href="" class="navbar-brand mx-4 mb-3">
                    <h3 class="text-primary"><i class="fa fa-hashtag me-2"></i>EduPredict</h3>
                </a>
                <div class="d-flex align-items-center ms-4 mb-4">
                    <div class="position-relative">

                        @if (Laravel\Jetstream\Jetstream::managesProfilePhotos())
                            <div class="dropdown-item text-center">
                                <img class="rounded-circle mb-2" src="{{ Auth::user()->profile_photo_url }}"
                                    alt="{{ Auth::user()->name }}" style="width: 40px; height: 40px;">
                            </div>
                        @endif

                        <div
                            class="bg-success rounded-circle border-2 border-white position-absolute end-0 bottom-0 p-1">
                        </div>
                    </div>
                    <div class="ms-3">
                        <h6 class="mb-0">
                            {{ Auth::user()->name }}
                        </h6>
                        <span>
                            {{ Auth::user()->role }}
                        </span>
                    </div>
                </div>

                <div class="navbar-nav w-100">
                    <a href="{{ route('analyst.dashboard') }}" class="nav-item nav-link active">
                        <i class="fa fa-tachometer-alt me-2"></i>Dashboard
                    </a>
                </div>
        </div>

        <!-- Sidebar End -->

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>EduPredict</title>
    <!-- Favicon icon -->
    <link rel="icon" id="dynamic-favicon" type="image/png" sizes="16x16" href="" class="rounded" />

    <script>
        function createFavicon() {
            // Create a canvas element
            var canvas = document.createElement('canvas');
            canvas.width = 64;
            canvas.height = 64;
            var ctx = canvas.getContext('2d');

            // Apply border-radius using canvas clipping
            ctx.beginPath();
            ctx.arc(32, 32, 32, 0, Math.PI * 2); // Circular clipping for the border radius
            ctx.clip();

            // Fill background with #6b51df color
            ctx.fillStyle = "#6b51df";
            ctx.fillRect(0, 0, canvas.width, canvas.height);

            // Set the text properties and draw "E" in white at the center
            ctx.font = "bold 45px Arial";
            ctx.fillStyle = "#ffffff";
            ctx.textAlign = "center";
            ctx.textBaseline = "middle";
            ctx.fillText("E", canvas.width / 2, canvas.height / 2);

            // Create a data URL and set it as the favicon
            var link = document.getElementById('dynamic-favicon');
            link.href = canvas.toDataURL("image/png");
        }

        // Call the function to create the favicon
        createFavicon();
    </script>


    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Heebo:wght@400;500;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.datatables.net/2.0.7/css/dataTables.dataTables.css">
    <!-- Icon Font Stylesheet -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="{{ asset('admin_assets/lib/owlcarousel/assets/owl.carousel.min.css') }}" rel="stylesheet">
    <link href="{{ asset('admin_assets/lib/tempusdominus/css/tempusdominus-bootstrap-4.min.css') }}" rel="stylesheet" />

    <!-- Customized Bootstrap Stylesheet -->
    <link href="{{ asset('admin_assets/css/bootstrap.min.css') }}" rel="stylesheet">

    <!-- Template Stylesheet -->
    <link href="{{ asset('admin_assets/css/style.css') }}" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-3.7.1.js" integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4="
        crossorigin="anonymous"></script>


</head>

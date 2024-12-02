<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>EduPredicts</title>

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



    <!-- Fonts -->
    <link rel="preconnect" href="https://fonts.bunny.net">
    <link href="https://fonts.bunny.net/css?family=figtree:400,500,600&display=swap" rel="stylesheet" />

    <!-- Scripts -->
    @vite(['resources/css/app.css', 'resources/js/app.js'])

    <!-- Styles -->
    @livewireStyles
</head>

<body>
    <div class="font-sans text-gray-900 antialiased">
        {{ $slot }}
    </div>

    @livewireScripts
</body>

</html>

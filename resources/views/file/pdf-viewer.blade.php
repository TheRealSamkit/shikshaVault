<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>{{ $file->title }} - Viewer</title>
        <style>
            body,
            html {
                margin: 0;
                padding: 0;
                height: 100%;
                overflow: hidden;
            }

            iframe {
                width: 100%;
                height: 100%;
                border: none;
            }
        </style>
    </head>

    <body>
        <!-- 
      We point the iframe to the 'viewer.html' inside our public/pdfjs/web folder.
      The 'file' query parameter tells PDF.js where to fetch the raw PDF data from.
    -->
        <iframe src="{{ asset('pdfjs/web/viewer.html') }}?file={{ urlencode($src) }}"></iframe>
    </body>

</html>
<html>
    <head>
        <title>@yield('title')</title>
        <style>
            body {font-size:16pt; color:#999; margin: 5px; }
            h1 { font-size:50pt; text-align:right; color:#f6f6f6;
                 margin:-20px 0px -30px 0px; letter-spacing:-4pt; }
            ul { font-size:12pt; }
            hr { margin: 25px 100px; border-top: 1px dashed #ddd; }
            .menutitle {font-size:14pt; font-weight:bold; margin: 0px; }
            .content {margin:10px; }
            .footer { text-align:right; font-size:10pt; margin:10px;
                      border-bottom:solid 1px #ccc; color:#ccc; }
            th {background-color: #999; color: #fff; padding: 5px 10px; }
            td {border: solid 1px #aaa; color: #999; padding: 5px 10px; }
        </style>
        <script type="text/javascript" src="./js/jquery-1.6.1.min.js"></script>
        <script type="text/javascript" src="./js/jquery-ui-1.8.13.custom.min.js"></script>
        <link rel="stylesheet" type="text/css" href="./css/jquery-ui-1.8.13.custom.css">
        <script type="text/javascript" src="./js/ui.dropdownchecklist-1.4-min.js"></script>
        <script type="text/javascript">
            $(document).ready(function () {
                $("#id").dropdownchecklist({width: 200});
            });
        </script>

    </head>
    <body>
        <h1>@yield('title')</h1>
        @section('menubar')
        <ul>
            <p class="menutitle">※メニュー</p>
            <li>@show</li>
        </ul>
        <hr size="1">
        <div class="content">
            @yield('content')
        </div>
        <div class="footer">
            @yield('footer')
        </div>
    </body>
</html>

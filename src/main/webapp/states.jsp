<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>JSP State</title>


    <link rel="stylesheet" href="webjars/bootstrap/4.1.3/css/bootstrap.min.css">

        <%--http://stackoverflow.com/a/24070373/548473--%>
    <script src=https://code.jquery.com/jquery-3.4.1.min.js></script>
    <script type="text/javascript" src="webjars/datatables/1.10.19/js/jquery.dataTables.min.js" defer></script>
    <script type="text/javascript" src="webjars/datatables/1.10.19/js/dataTables.bootstrap4.min.js" defer></script>
</head>

<body>

    <div id="container">
        <table id="table" class="table table-striped table-bordered" style="width:100%">
            <thead>
                <tr>
                    <th>State name</th>
                    <th>Short state name</th>
                </tr>
            </thead>
        </table>
    </div>


    <script type="text/javascript">

        $(document).ready(function () {

            $("#table").DataTable({

                ajax: {
                    "url": "/state",
                    "dataSrc": ""
                },

                "paging": false,
                "info": false,
                "searching": false,
                "ordering": false,

                "columns": [
                    {'data': 'name'},
                    {'data': 'shortName'}
                ]
            });

        });

    </script>

</body>
</html>
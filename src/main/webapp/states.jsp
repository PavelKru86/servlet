<%--
  Created by IntelliJ IDEA.
  User: Pavel Kruchkov
  Date: 30.05.2019
  Time: 9:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
                $.getJSON('state', function(s) {
                    $("#table").DataTable({
                        "bServerSide": true,
                        ajax: {
                            "url": "/state",
                            "dataSrc": function (json) {
                                var return_data = new Array();
                                for(var i=0;i< json.state[0].length; i++){
                                    return_data.push({
                                        'name': json.state[0][i].name,
                                        'short_name'  :  json.state[0][i].short_name

                                    })
                                }
                                return return_data;
                            }

                        },

                        "paging": false,
                        "info": false,
                        "searching": false,
                        "ordering": false,

                        "columns": [
                            {'data': 'name'},
                            {'data': 'short_name'}


                        ]
                    });
                });
            });

    </script>

</body>
</html>
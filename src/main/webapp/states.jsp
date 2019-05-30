<%--
  Created by IntelliJ IDEA.
  User: admin930
  Date: 30.05.2019
  Time: 9:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>JSP Pagination Example</title>
    <script src=https://code.jquery.com/jquery-3.4.1.min.js></script>
</head>

<body>
<div id="table">

</div>
<%--
<table>
    <c:forEach items="${states}" var="state">
        <tr>
            <td>${state.name}</td>
            <td>${state.short_name}</td>
        </tr>
    </c:forEach>
</table>--%>

<script type="text/javascript">
    /*$(document).ready(function(){
        var totalRecords;
        var recordsPerPage=5;
        var recordsToFetch=recordsPerPage;
        var totalPages;
        var currentPage=1;
        var currentIndex=0;

        $.get("states.jsp?requestType=countRecords",function(data){
            var JSONData=JSON.parse(data);
            totalRecords=JSONData.count;
            totalPages=Math.floor(totalRecords/recordsPerPage);

            if(totalRecords%recordsPerPage!=0){
                totalPages++;
            }

            if(totalRecords<recordsPerPage){
                recordsToFetch=totalRecords%recordsPerPage;
            }
            else{
                recordsToFetch=recordsPerPage;
            }

            $("#page").html("Page "+currentPage+" of "+totalPages);
        });

        $.get("states.jsp?requestType=getRecords&currentIndex="+currentIndex+"&recordsToFetch="+recordsToFetch,function(data){
            var JSONData=JSON.parse(data);
            for(i=0;i<recordsToFetch;++i){
                $("#div1").append("<p>"+(currentIndex+1)+". "+JSONData.record[i]+"</p>");
                currentIndex++;
            }

            if(currentPage==totalPages){
                $("#next").hide();
            }
            else{
                $("#next").show();
            }

            if(currentPage==1){
                $("#back").hide();
            }
            else{
                $("#back").show();
            }

        });



        $("#next").click(function(){
            $("#div1").html("");
            currentPage++;

            if(currentPage==totalPages){
                $("#next").hide();
                if(totalRecords%recordsPerPage!=0){
                    recordsToFetch=totalRecords%recordsPerPage;
                }
                else{
                    recordsToFetch=recordsPerPage;
                }
            }
            else{
                $("#next").show();
                recordsToFetch=recordsPerPage;
            }

            if(currentPage==1){
                $("#back").hide();
            }
            else{
                $("#back").show();
            }

            $.get("states.jsp?requestType=getRecords&currentIndex="+currentIndex+"&recordsToFetch="+recordsToFetch,function(data){
                var JSONData=JSON.parse(data);
                for(i=0;i<recordsToFetch;++i){
                    $("#div1").append("<p>"+(currentIndex+1)+". "+JSONData.record[i]+"</p>");
                    currentIndex++;
                }
            });

            $("#page").html("Page "+currentPage+" of "+totalPages);

        });


        $("#back").click(function(){
            $("#div1").html("");
            currentPage--;
            currentIndex=currentIndex-recordsToFetch-recordsPerPage;

            if(currentPage==totalPages){
                $("#next").hide();
                recordsToFetch=totalRecords%recordsPerPage;
            }
            else{
                $("#next").show();
                recordsToFetch=recordsPerPage;
            }

            if(currentPage==1){
                $("#back").hide();
            }
            else{
                $("#back").show();
            }

            $.get("states.jsp?requestType=getRecords&currentIndex="+currentIndex+"&recordsToFetch="+recordsToFetch,function(data){
                var JSONData=JSON.parse(data);
                for(i=0;i<recordsToFetch;++i){
                    $("#div1").append("<p>"+(currentIndex+1)+". "+JSONData.record[i]+"</p>");
                    currentIndex++;
                }
            });

            $("#page").html("Page "+currentPage+" of "+totalPages);

        });

    });*/
    $(document).ready(function() {
        var table = $('<table/>').appendTo($('#table'));
        $.getJSON('state', function(s) {
            $.each(s, function(i, state) {
                console.log('Раздел: ' + state[i]);
                $.each(state, function (i, value) {
                    $.each(value, function (i,res) {
                        $('<tr/>').appendTo(table)
                            .append($('<td/>').text(value[i].name))
                            .append($('<td/>').text(value[i].short_name));
                        //выведем индекс и значение массива в консоль
                        //document.write(i + ' - ' + value[i].name + '<br>');
                        console.log('Индекс: ' + i + '; Значение: ' + value[i].name);
                    })

                });

            });
        });
    });
</script>

<div id="div1"></div><br/>
<button id="back">Back</button>
<button id="next">Next</button>

<p id="page"></p>
</body>
</html>
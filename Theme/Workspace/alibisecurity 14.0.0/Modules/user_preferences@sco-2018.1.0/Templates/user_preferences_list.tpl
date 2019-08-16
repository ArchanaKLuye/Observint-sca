<h1>{{message}}</h1>
<div class="home">
    <div class="product-comparison-table">
        <div id="dvTable"></div>
    </div>
</div>


<script>
$(function() {

    /*Fetch ComapreArray Coockie*/
    var TempCompareArray = $.parseJSON($.cookie("ComapreArray"));

   /* Define new array itemArray*/
    var itemArray = new Array();
    for (var n = 0; n < TempCompareArray.length; n++) {

        /*Push Each Items*/
        var Items = Object.values(TempCompareArray[n]);
        itemArray.push(Items);
    }
   /* console.log("itemArray", itemArray);*/

    //Create a HTML Table element.
    var table = $("<table />");
    table[0].border = "1";

    /*Append Close button as table head*/
    for (var x = 0; x < 1; x++) {
        var row = $(table[0].insertRow(-1));
        for (var y = 0; y < itemArray.length; y++) {
            var headerCell = $('<th class="close-icon"/>');

            headerCell.html('<div class="compare-close-button-icon">X</div>');
            row.append(headerCell);
        }
    }


   /* Append Immage in each row*/
    for (var k = 0; k < 1; k++) {
        var row = $(table[0].insertRow(-1));
        for (var p = 0; p < itemArray.length; p++) {
            var headerCell = $('<td class="image-cell"/>');

            headerCell.html('<img class=\"img-pdt\"  src=\"' + itemArray[p][4] + '\" alt=\"' + 'iamge' + '\" >');
            row.append(headerCell);
        }
    }

   /* Append other details*/
    for (var i = 0; i < itemArray[0].length - 1; i++) {
        var row = $(table[0].insertRow(-1));
        for (var j = 0; j < itemArray.length; j++) {
            var headerCell = $('<td class="compare-td" />');
            headerCell.html(itemArray[j][i]);
            row.append(headerCell);
        }
    }


   /* Append table and classes*/
    var dvTable = $("#dvTable");
    dvTable.html("");
    dvTable.append(table);
    $("#dvTable").find("table").addClass("compare-table");
    $("#dvTable").find(".compare-table").find("tr").addClass("compare-tr");

    /*Click on the icon list and cookie is updated */
    $(".compare-close-button-icon").click(function() {

     /*   Assign ID to each close icon*/
        var count = 0;
        $('.compare-close-button-icon').each(function() {
            $(this).attr('id', count);
            count++;
        });
        var comapre_close_button_id = $(this).attr("id");


       /* Fetch Coockie*/
        var ComapreArray = $.parseJSON($.cookie("ComapreArray"));

       /* Pop the corresponding item which in the cell*/
        ComapreArray.splice(comapre_close_button_id, 1);
      /*  console.log("ComapreArray", ComapreArray);*/

      /*  Remove the column from the table*/
        $('.product-comparison-table tr').find('td:eq(' + comapre_close_button_id + '),th:eq(' + comapre_close_button_id + ')').remove();

        /*Set new coockie*/
        $.cookie("ComapreArray", JSON.stringify(ComapreArray));


    });


});
</script>
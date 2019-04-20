<div class="product-details-information-content">
    <button class="specification-product-information-content">
    <h2 class="product-details-information-tab-content-panel-title">Specification</h2>
     <i class="fa fa-angle-down spp-angle-up" id="specification-product-information-angle-up"></i>
    </button>
    <!-- <div class="product-details-information-tab-content" data-type="information-content" data-action="tab-content">
        <div class="product-details-information-tab-content-container" data-type="information-content-text">
      
        </div>
    </div> -->
    <div id="showSpec" style="margin-top: 30px;display: block;"></div>
    <div id="spec" style="display: none;">{{{details}}}</div>
</div>
<script>
var AllSpec = document.getElementById('spec').innerHTML;
var EachSpec = AllSpec.replace('{', "").replace(/}/g, "").replace(/"/g, "").split(',');
var Specs = new Array();
var color = 0;
Specs.push("<div class=\"container\" style=\"width: 100%;\">");
Specs.push("<input type=\"checkbox\" class=\"read-more-state\" id=\"post-1\" style=\"display:none;\" />");
Specs.push("<table class=\"table table-bordered read-more-wrap\" style=\"border-bottom: 0;\"><tbody>");

for (var i = 0; i < EachSpec.length; i++) {

    var name = EachSpec[i].split(':')[0].replace(/_/g, ' ');
    var detail = EachSpec[i].split(':')[1].toString();
    if (detail != "0") {
        if (Specs.length < 22) {
            Specs.push('<tr id=\"' + Specs.length + '\"><td class=\"' + Specs.length + '\" style=\"background-color: #f9f9f9; width: 25%; font-weight: 600\">' + name + '</td>');
            detail = detail.replace(/#1#/g, '"');
            detail = $("<p/>").html(detail).text();
            if (color % 2 == 0) {
                Specs.push('<td class=\"' + Specs.length + '\" style=\"word-break: break-all;\">' + detail + '</td></tr>');
            } else {
                Specs.push('<td class=\"' + Specs.length + '\" style=\"background-color: #f9f9f9;word-break: break-all;\">' + detail + '</td></tr>');
            }
            color++;

        }
        if (Specs.length > 22) {
            Specs.push('<tr id=\"' + Specs.length + '\" class=\"read-more-target\"><td style=\"background-color: #f9f9f9; width: 25%; font-weight: 600\">' + name + '</td>');
            detail = detail.replace(/#1#/g, '"');
            detail = $("<p/>").html(detail).text();
            if (color % 2 != 0) {
                Specs.push('<td style=\"word-break: break-all;\">' + detail + '</td></tr>');
            } else {
                Specs.push('<td style=\"background-color: #f9f9f9; word-break: break-all;\">' + detail + '</td></tr>');
            }
            color++;
        }
    }
}
if (Specs.length > 22) {
    Specs.push("</tbody></table><div style=\"text-align: center;\"><label for=\"post-1\" class=\"read-more-trigger\">View More</label></div></div>");
} else {
    Specs.push("</tbody></table></div>");
}
Specs = Specs.toString().replace(/,/g, "");
Specs = Specs.replace(/@/g, ',');
Specs = Specs.replace(/`/g, ':');
document.getElementById("showSpec").innerHTML = Specs;
$(document).ready(function() {

    if (Specs.length > 22) {
        $('#23').remove();
        $("#21").addClass("opaq");
        $('.21').css({ "background-color": "#f9f9f9", "width": "25%", "border-bottom": "0" });
        $('.22').css("border-bottom", "0");
    }

    $(".read-more-target").hide();
    $("label").click(function() {
        $(".read-more-target").toggle();
    });

    $("label").click(function() {

        $(this).text($(this).text() == 'View More' ? 'View Less' : 'View More');
        if (Specs.length > 22) {
            $("#21").toggleClass("opaq opaq1");
        }
    });

});



var acc = document.getElementsByClassName("specification-product-information-content");
var i;

    /*$(this).toggleClass("pdp-angle-down");*/

for (i = 0; i < acc.length; i++) {
    acc[i].addEventListener("click", function() {
        this.classList.toggle("active");
        var panel = this.nextElementSibling;
         if (panel.style.display === "block") {
            panel.style.display = "none";
            $(".spp-angle-up").removeClass("fa fa-angle-down").addClass("fa fa-angle-up");
        } else {
            panel.style.display = "block";
           $(".spp-angle-up").removeClass("fa fa-angle-up").addClass("fa fa-angle-down");
            
        }
     });
    
}

</script>
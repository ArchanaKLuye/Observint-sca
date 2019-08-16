<div id="site-logo" class="content-banner"></div>
<a class="header-logo" id="header-image-logo-id"href="{{headerLinkHref}}" data-touchpoint="{{headerLinkTouchPoint}}" data-hashtag="{{headerLinkHashtag}}" title="{{headerLinkTitle}}">

{{#if logoUrl}}
	<img class="header-logo-image" src="/SSP Applications/NetSuite Inc. - SCA Aconcagua/Development/images/alibilogo.svg" alt="{{siteName}}">
{{else}}
	<span class="header-logo-sitename">
		{{siteName}}
	</span>
{{/if}}
</a> {{!---- Use the following context variables when customizing this template: logoUrl (String) headerLinkHref (String) headerLinkTouchPoint (String) headerLinkHashtag (String) headerLinkTitle (String) ----}}
<script>

  if(window.location.href.indexOf('checkout')!=-1){
   $('#header-image-logo-id')[0].href="";
$('#header-image-logo-id').click(function(e) {  
$('#header-image-logo-id')[0].href="";

var modal = document.getElementById('myModal');

var btn = document.getElementById("header-image-logo-id");

var span = document.getElementsByClassName("close")[0];
 
btn.onclick = function() {
  modal.style.display = "block";
}
span.onclick = function() {
  modal.style.display = "none";
}
window.onclick = function(event) {
  if (event.target == modal) {
    modal.style.display = "none";
  }
}
});
  }
  else{
    $('#header-image-logo-id')[0].href="/";
  }

</script> 


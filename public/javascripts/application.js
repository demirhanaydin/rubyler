$(document).ready(function() {
	$(".post-body").each(
		function(e){
			this.innerHTML=this.innerHTML.replace(/&lt;pre&gt;/g, '<pre>').replace(/&lt;\/pre&gt;/g,'</pre>');
	});
});
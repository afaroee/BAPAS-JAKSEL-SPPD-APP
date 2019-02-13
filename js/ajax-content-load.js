$(document).ready(function() {
	$('#page_content').load('../frontend/view_dashboard.php');

	// ajax page content loader
	$('#link_userData').click(function() {
		var page = $(this).attr('name');
		$('#page_content').load('../frontend/view_'+page+'.php');
	});
});
	
<script th:inline="javascript">
$(function(){
	// 
	$('#sidebarCollapse').on('click', function() {
		$('#sidebarCollapseBtn').toggleClass('active');
		$('#sidebar').toggleClass('active');
	});
	
	// Create sidebar from category
	$.ajax({
		method : 'GET',
		url: BASE_CONTEXT_PATH + 'category',
	}).done(function(result){
		// Append tag
		var list = '';
		var class_name = 'nav-link';
		$.each(result, function(i, category){
			list += '<li><a href="'+BASE_CONTEXT_PATH+'main?categoryNm='+category.nm+'&categoryLabelNm='+category.labelNm+'">'+category.labelNm+'</a></li>';
		});
		$('#category').html(list);
	}).fail(function(xhr, ajaxOptions, thrownError){
		alert(xhr);
	});
})
</script>
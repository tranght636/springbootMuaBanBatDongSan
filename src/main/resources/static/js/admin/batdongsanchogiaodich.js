$(document).ready(function() {
	$(".btn-BDSCGD-cam").click(function() {
		var id = $(this).attr("id-baidang");
        var This = $(this);
        $.ajax({
            url: `/api/cam-bds?id=${id}`,
            type: 'PUT',
            contentType: 'application/json',
            dataType: 'json',
            success: function(result) {
            	if (result >0) {
                    This.closest("li").remove();
                } else {
                    alert("bug");
                }
            }
        });
	});
	
	
	
});
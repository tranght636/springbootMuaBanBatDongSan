$(document).ready(function() {
	
	$(".btn-BDSDT-Xoa").click(function() {
		var id = $(this).attr("id-baidang");
        var This = $(this);
        $.ajax({
            url: `/api/xoa-bds-by-user?id=${id}`,
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
$(document).ready(function() {
	$(".DSND-btn-xoa").click(function() {
		var id = $(this).attr("id-user");
        var This = $(this);
        $.ajax({
            url: `/api/delete-user?id=${id}`,
            type: 'POST',
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
	
	$(".DSND-btn-khoi-phuc").click(function() {
		var id = $(this).attr("id-user");
        var This = $(this);
        $.ajax({
            url: `/api/khoi-phuc-user?id=${id}`,
            type: 'POST',
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
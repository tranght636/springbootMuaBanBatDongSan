$(document).ready(function() {
	$("#CTTKXoaTaiKhoan").click(function() {
		var id = $(this).attr("id-user");
        var This = $(this);
        $.ajax({
            url: `/api/delete-user?id=${id}`,
            type: 'POST',
            contentType: 'application/json',
            dataType: 'json',
            success: function(result) {
                window.location=`/admin/chi-tiet-nguoi-dung?user-id=${id}`;
            }
        });
	});
	

	
});
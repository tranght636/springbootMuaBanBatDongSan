$(document).ready(function() {
	$("#btn-CTTK-XoaTaiKhoan").click(function() {
		var id = $(this).attr("id-user");
        var This = $(this);
        $.ajax({
            url: `/api/delete-user?id=${id}`,
            type: 'PUT',
            contentType: 'application/json',
            dataType: 'json',
            success: function(result) {
                window.location=`/admin/chi-tiet-nguoi-dung?user-id=${id}`;
            }
        });
	});
	
	$("#btn-CTTK-KhoiPhucTaiKhoan").click(function() {
		var id = $(this).attr("id-user");
        var This = $(this);
        $.ajax({
            url: `/api/khoi-phuc-user?id=${id}`,
            type: 'PUT',
            contentType: 'application/json',
            dataType: 'json',
            success: function(result) {
                window.location=`/admin/chi-tiet-nguoi-dung?user-id=${id}`;
            }
        });
	});
	
	$(".btn-CTND-xacnhan").click(function() {
		var id = $(this).attr("id-baidang");
        var This = $(this);
        $.ajax({
            url: `/api/xac-nhan-bds?id=${id}`,
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
	$(".btn-CTND-daytin").click(function() {
		var id = $(this).attr("id-baidang");
        var This = $(this);
        $.ajax({
            url: `/api/day-bds?id=${id}`,
            type: 'PUT',
            contentType: 'application/json',
            dataType: 'json',
            success: function(result) {
            	if (result >0) {
                    This.closest("i").remove();
                } else {
                    alert("bug");
                }
            }
        });
	});
	
	$(".btn-CTND-khoiphuc").click(function() {
		var id = $(this).attr("id-baidang");
        var This = $(this);
        $.ajax({
            url: `/api/khoi-phuc-bds?id=${id}`,
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
	$(".btn-CTND-camBDS").click(function() {
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
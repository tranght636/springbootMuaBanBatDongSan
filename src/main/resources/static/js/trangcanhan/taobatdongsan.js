function setDiaChiChiTiet() {
	
	if(document.getElementById("TBDS_so_nha_chi_tiet_khac").value !== ""){
		var dcct= document.getElementById("TBDS_so_nha_chi_tiet_khac").value +", ";
	}
	else{
		var dcct= "";
	}
	
	dcct +=  $("#TBDS_duong_id :selected").text();
	dcct += ", "+ $("#TBDS_xa_id :selected").text();
	dcct += ", "+ $("#TBDS_huyen_id :selected").text();
	dcct += ", "+ $("#TBDS_city_id :selected").text();
	let diaChiChiTiets = document.getElementsByClassName("TBDS_dia_chi_chi_tiet");
	diaChiChiTiets[0].value =dcct;
	diaChiChiTiets[1].value =dcct;
}
$(document).ready(function() {
	$("#TBDS_DanhMucChung").change(function () {
	    $('#TBDS_DanhMuc').empty();
	    var dmc_id = $(this).val();
	    $.ajax({
            url: `/api/get-danh-muc-by-dmcid?dmc_id=${dmc_id}`,
            type: 'GET',
            contentType: 'application/json',
            dataType: 'json',
            success: function(result) {
                if (result.length > 0) {
                	for(res of result){
                		$("#TBDS_DanhMuc").append(`<option value="${res.id}">${res.name}</option>`);
                	}
                }
            }
        });
	});
	
	
	$("#TBDS_city_id").change(function () {
	    $('#TBDS_huyen_id').empty();
	    var _province_id = $(this).val();
	    $.ajax({
            url: `/api/get-quan-huyen-by-cityid?_province_id=${_province_id}`,
            type: 'GET',
            contentType: 'application/json',
            dataType: 'json',
            success: function(result) {
                if (result.length > 0) {
                	for(res of result){
                		$("#TBDS_huyen_id").append(`<option value="${res.id}">${res._prefix} ${res._name}</option>`);
                	}
                	$("#TBDS_huyen_id").change();
                }
            }
        });
	});
	
	$("#TBDS_huyen_id").change(function () {
	    $('#TBDS_xa_id').empty();
	    var _district_id= $(this).val();
	    var _province_id = document.getElementById("TBDS_city_id").value;
	    $.ajax({
            url: `/api/get-phuong-xa-by-huyenid-cityid?_district_id=${_district_id}&_province_id=${_province_id}`,
            type: 'GET',
            contentType: 'application/json',
            dataType: 'json',
            success: function(result) {
                if (result.length > 0) {
                	for(res of result){
                		$("#TBDS_xa_id").append(`<option value="${res.id}">${res._prefix} ${res._name}</option>`);
                	}
                	$("#TBDS_xa_id").change();
                }
            }
        });
	});
	
	$("#TBDS_xa_id").change(function () {
	    $('#TBDS_duong_id').empty();
	    var _district_id= document.getElementById("TBDS_huyen_id").value;
	    var _province_id = document.getElementById("TBDS_city_id").value;
	    $.ajax({
            url: `/api/get-duong-by-huyenid-cityid?_district_id=${_district_id}&_province_id=${_province_id}`,
            type: 'GET',
            contentType: 'application/json',
            dataType: 'json',
            success: function(result) {
                if (result.length > 0) {
                	for(res of result){
                		$("#TBDS_duong_id").append(`<option value="${res.id}">${res._prefix} ${res._name}</option>`);
                	}
                	 setDiaChiChiTiet();
                }
            }
        });
	   
	});
	
	$("#TBDS_duong_id").change(function () {
         setDiaChiChiTiet();
	});
	$("#TBDS_so_nha_chi_tiet_khac").change(function () {
        setDiaChiChiTiet();
	});
	
	
	

});
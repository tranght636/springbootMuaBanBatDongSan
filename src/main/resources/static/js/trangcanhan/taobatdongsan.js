var images = [];
function changeColor(x) {
		  x.target.style.color = "red";
		  
		  
}


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
function setGia() {
	if(!$('#TBDS_giatu').val()){
		document.getElementById("gia_tu").value= "0";
		if(!$('#TBDS_giaden').val()){
			document.getElementById("gia_den").value= "0";
			document.getElementById("TBDS_money").value= "Thương lượng";
		}else{
			document.getElementById("gia_den").value= document.getElementById("TBDS_giaden").value  * document.getElementById("TBDS_select_gia_den").value;
			var i = parseInt(document.getElementById("TBDS_select_gia_den").value);
			switch(i) {
			  case 1:
				  document.getElementById("TBDS_money").value= document.getElementById("TBDS_giaden").value + "VNĐ";
			    break;
			  case 1000000:
				  document.getElementById("TBDS_money").value= document.getElementById("TBDS_giaden").value + "triệu VNĐ";
			    break;
			  case 1000000000:
				  document.getElementById("TBDS_money").value= document.getElementById("TBDS_giaden").value + "tỷ VNĐ";
			  default:
				  break;
			}
			
		}
	}else{
		document.getElementById("gia_tu").value= document.getElementById("TBDS_giatu").value 
													* document.getElementById("TBDS_select_gia_tu").value;
		if(!$('#TBDS_giaden').val()){
			document.getElementById("gia_den").value= "0";
			var i = parseInt(document.getElementById("TBDS_select_gia_tu").value);
			switch(i) {
			  case 1:
				  document.getElementById("TBDS_money").value= document.getElementById("TBDS_giatu").value + "VNĐ";
			    break;
			  case 1000000:
				  document.getElementById("TBDS_money").value= document.getElementById("TBDS_giatu").value + "triệu VNĐ";
			    break;
			  case 1000000000:
				  document.getElementById("TBDS_money").value= document.getElementById("TBDS_giatu").value + "tỷ VNĐ";
			  default:
				  break;
			}
		}
			else{
				document.getElementById("gia_den").value= document.getElementById("TBDS_giaden").value 
														* document.getElementById("TBDS_select_gia_den").value;
				document.getElementById("gia_tu").value= document.getElementById("TBDS_giatu").value 
														* document.getElementById("TBDS_select_gia_tu").value;
				var i = parseInt(document.getElementById("TBDS_select_gia_tu").value);
				switch(i) {
				  case 1:
					  document.getElementById("TBDS_money").value= document.getElementById("TBDS_giatu").value + "VNĐ";
				    break;
				  case 1000000:
					  document.getElementById("TBDS_money").value= document.getElementById("TBDS_giatu").value + "triệu VNĐ";
				    break;
				  case 1000000000:
					  document.getElementById("TBDS_money").value= document.getElementById("TBDS_giatu").value + "tỷ VNĐ";
				  default:
					  break;
				}
				var j = parseInt(document.getElementById("TBDS_select_gia_den").value);
				switch(j) {
				  case 1:
					  document.getElementById("TBDS_money").value+="-"+ document.getElementById("TBDS_giaden").value + "VNĐ";
				    break;
				  case 1000000:
					  document.getElementById("TBDS_money").value+="-"+ document.getElementById("TBDS_giaden").value + "triệu VNĐ";
				    break;
				  case 1000000000:
					  document.getElementById("TBDS_money").value+="-"+ document.getElementById("TBDS_giaden").value + "tỷ VNĐ";
				  default:
					  break;
				}
				
				
			}
	}
}

$(document).ready(function() {
	$("#TBDS_giatu").change(function () {
		setGia(); 
	});
	$("#TBDS_select_gia_tu").change(function () {
		setGia(); 
	});
	$("#TBDS_giaden").change(function () {
		setGia(); 
	});
	$("#TBDS_select_gia_den").change(function () {
		setGia(); 
	});
	
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
	
	
	$("#btn-upload-img-tbds").on('click', function(){
		let form = new FormData();
		let files = document.querySelector('#multi-file-tbds').files;
		
		if(!files.length) {
			return false;
		}
		
		for(let file of files){
			form.append('multipartFiles', file);
		}
		
		$.ajax({
            url: '/api/file/',
            type: 'POST',
            contentType: false,
            processData: false,
            data: form,
            success: function(result) {
            	if(result.length) {
            		for(image of result) {
            			$("#list-image-tbds").append(`
            			<div class="wrapper">
						      <img class="img" src="${image}" />
						      <i idImg="${image.split('/').pop()}" 
						      class=" cross-img dngaz btnDeleteImg" style="font-size: 20px; color: red;">x</i>
						</div>`);
						
						
						images.push(image);
            		}
            		var res = result.map(x => {
            		    return x.split('/').pop();
            		})
            		res = res.join('-');
            		
            		document.getElementById('multi-file-tbds').value = "";
            		document.getElementById("InputIDImg").value=res;
            	}
            }
        });
	});
	$('#list-image-tbds').on('click', '.btnDeleteImg', function() {
		var id = $(this).attr("idImg");
        var This = $(this);
        $.ajax({
            url: `/api/xoa-img?id=${id}`,
            type: 'PUT',
            contentType: 'application/json',
            dataType: 'json',
            success: function(result) {
            	if (result >0) {
                    
                    var listImg = document.getElementById('InputIDImg').value;
                    var array= listImg.split('-');
                    for( var i = 0; i < array.length; i++){ 
                    	   if ( array[i] === id) {
                    		   array.splice(i, 1); 
                    		   This.closest("div").remove();
                    	   }
                    	}
                    //var new_arr=array.filter(item => item !== id);
                    listImg=array.join('-');
                    document.getElementById('InputIDImg').value=listImg;
                } else {
                    alert("bug");
                }
            }
        });
	});
	
	
	$("#btn-add-bds").on("click", function(){ 
		$("#bai-dang").submit();
	});
	
	/*
	 * 1. Lưu hình ảnh bằng cách gọi api hinh_anh_video 2. Cho phép form submit
	 */
	/*
	 * $("#btn-add-bds").on("click", function(){ if(images.length) { let data =
	 * images.map(image => { return { bai_viet_id: 1, link: image } });
	 * 
	 * $.ajax({ url: '/api/hinh-anh-video/', type: 'POST', contentType:
	 * 'application/json', dataType: 'json', data: JSON.stringify(data),
	 * success: function(result) { if(!result){ alert("Save image failed"); } }
	 * }); }
	 * 
	 * 
	 * //$("#bai-dang").submit(); });
	 */
});
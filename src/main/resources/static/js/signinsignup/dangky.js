//$(document).ready(function() {
//	
//	$("#btnCNTTCN-Luu").click(function() {
//		if(document.getElementById("newpassword").value === document.getElementById("repeat-passsword").value) {
//			document.getElementById("confirm-incorrect").hidden = true;
//			var id =document.getElementById("id").value;
//			var username = document.getElementById("username").value;
//			var email = document.getElementById("email").value;
//			var password = document.getElementById("newpassword").value;
//			var address = document.getElementById("address").value;
//			var phone = document.getElementById("phone").value;
//			var dob = document.getElementById("dob").value;
//			var data ={
//					id: id,
//					username : username,
//					email: email,
//					password: password,
//					phone_number: phone,
//					address: address,
//					dob: dob
//			}
//			 $.ajax({
//		            url: `/api/update-user`,
//		            type: 'PUT',
//		            contentType: 'application/json',
//		            data: JSON.stringify(data),
//		            dataType: 'json',
//		            success: function(result) {
//		                if (result > 0) {
//		                	document.getElementById("capNhatThanhCong").hidden = false;
//		                	document.getElementById("capNhatThatBai").hidden = true;
//		                } else {
//		                	document.getElementById("capNhatThanhCong").hidden = true;
//		                	document.getElementById("capNhatThatBai").hidden = false;
//		                }
//		            }
//		        });
//			
//		}else{
//			document.getElementById("confirm-incorrect").hidden = false;
//		}
//		
//		
//        
//	});
//
//});
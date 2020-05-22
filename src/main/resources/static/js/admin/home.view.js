webix
		.ready(function() {

			webix
					.ui({
						container : "list-user",
						height : 500,
						rows : [ {
							view : "datatable",
							id : "tblUser",
							css : "main",
							resizeColumn : true,
							css : "webix_data_border webix_header_border",
							columns : [
									{
										minWidth : 400,
										header : "Username",
										id : "username",
									},
									{
										id : "password",
										header : "Password",
										fillspace : true
									},
									{
										width : 100,
										// template: "{common.editIcon()}
										// {common.trashIcon()} " // usage of
										// predefined elements
										template : "<span class='btnEdit webix_icon wxi-pencil' data=#id# data-toggle='modal' data-target='#modal-edit-user'></span><span class='btnDelete webix_icon wxi-trash' data=#id#></span>",
									} ]
						} ]
					});

			webix.ui({
				container : "search-container",
				view : "form",
				id : "form_search",
				minWidth : 500,
				cols : [ {
					view : "text",
					name : "username",
					id : "inp_username",
					label : "Username"
				}, {
					view : "text",
					name : "password",
					id : "inp_password",
					label : "Password"
				}, {
					view : "button",
					id : "btn_seach",
					autowidth : true,
					value : "Search",
					click : search
				}, ]
			})
		});
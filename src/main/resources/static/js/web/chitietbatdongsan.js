const baiDangId = $("#bai-dang-id").val();
const userId = $("#user-id").val();
const classYeuThich = 'fa-heart';
const classChuaYeuThich = 'fa-heart-o';
var stompClient = null;



function connect() {
    var socket = new SockJS('/ws');
    stompClient = Stomp.over(socket);
    stompClient.connect({}, function(frame) {
        console.log('Connected: ' + frame);
        stompClient.subscribe('/topic/comment', function(content) {
            if (content.body === "ok") {
                loadComment();
            }
        });
    });
}


function showMes(mes) {
    $("#mes").append("<p>" + mes + "</p>");
}

function renderHtmlComment(comment) {
    const date = new Date(Date.parse(comment.modified_date));
    const dateStr = date.getDate() + "-" + date.getMonth() + "-" + date.getFullYear() + " " + date.getHours() + ":" + date.getMinutes();
    return `<li>
		<div class="row comment-box p-1 pt-3 pr-4">
			<div class="col-lg-2 col-3 user-img text-center">
				<img src="/img/web/user.png" class="main-cmt-img">
			</div>
			<div class="col-lg-10 col-9 user-comment bg-light rounded pb-1">
				<div class="row">
					<div class="col-lg-8 col-6 pr-0">
						<p class="w-100 p-2 m-0"><b style="color: blue;">${comment.username}</b> ${comment.content}</p>
					</div>
					<div class="col-lg-4 col-6">
						<p class="w-100 p-2 m-0"><span class="float-right"><i class="fa fa-clock-o mr-1" aria-hidden="true"></i>${dateStr}</span></p>
					</div>
				</div>
			</div>
		</div>
	</li>`;
}

function loadComment() {
    $("#comments").empty();

    $.ajax({
        url: `/api/comment?id=${baiDangId}`,
        type: 'GET',
        contentType: 'application/json',
        dataType: 'json',
        success: function(result) {
            if (result.length > 0) {
                for (res of result) {
                    $("#comments").append(renderHtmlComment(res));
                }
            }
        }
    });
}





$(document).ready(function() {
    connect();
    loadComment();
    $('.btn-yeu-thich').on('click', function() {
        const This = $(this);
        if (This.attr('class').includes(classChuaYeuThich)) {
            $.ajax({
                url: `/api/thich-bds?id=${baiDangId}`,
                type: 'PUT',
                contentType: 'application/json',
                dataType: 'json',
                success: function(result) {
                    if (result > 0) {
                        This.removeClass(classChuaYeuThich);
                        This.addClass(classYeuThich);
                    }
                }
            });

        } else {
            $.ajax({
                url: `/api/bo-thich-bds?id=${baiDangId}`,
                type: 'PUT',
                contentType: 'application/json',
                dataType: 'json',
                success: function(result) {
                    if (result > 0) {
                        This.removeClass(classYeuThich);
                        This.addClass(classChuaYeuThich);
                    }
                }
            });
        }
    });

    $('#btn-CTBDS-Thich').on('click', function() {
        if ($(this).val().includes("Thích")) {
            $(this).val("Đã Thích");
        }
    });

    $('#btn-send-message').on('click', function() {
        const data = {
            'content': $("#txt-comment").val(),
            'bai_dang_id': baiDangId,
            'created_by': userId,
            'modified_by': userId
        }
        stompClient.send("/app/comment", {}, JSON.stringify(data));
        $("#txt-comment").val("");
    });

});
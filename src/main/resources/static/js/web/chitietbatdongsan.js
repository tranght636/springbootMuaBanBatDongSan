const classYeuThich = 'fa-heart';
const classChuaYeuThich = 'fa-heart-o';
$(document).ready(function() {
	$('.btn-yeu-thich').on('click', function() {
		if ($(this).attr('class').includes(classChuaYeuThich)) {
			$(this).removeClass(classChuaYeuThich);
			$(this).addClass(classYeuThich);
		} else {
			$(this).removeClass(classYeuThich);
			$(this).addClass(classChuaYeuThich);
		}
	});
});
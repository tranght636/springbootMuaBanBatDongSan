$(document).ready(function() {

    $('.sel-danh-muc-chung').on('change', function() {
        $('.sel-danh-muc').empty();
        var dmc_id = $(this).val();
        $.ajax({
            url: `/api/get-danh-muc-by-dmcid?dmc_id=${dmc_id}`,
            type: 'GET',
            contentType: 'application/json',
            dataType: 'json',
            success: function(result) {
                if (result.length > 0) {
                    $('.sel-danh-muc').append('<option value="-1">Loại BDS</option>');
                    for (res of result) {
                        $('.sel-danh-muc').append(`<option value="${res.id}">${res.name}</option>`);
                    }
                    $('.sel-danh-muc').niceSelect('update');
                }
            }
        });
    });

    $(".sel-tinh-thanh").on('change', function() {
        var _province_id = $(this).val();
        if (_province_id === '-1') {
            return;
        }
        $('.sel-quan-huyen').empty();
        $.ajax({
            url: `/api/get-quan-huyen-by-cityid?_province_id=${_province_id}`,
            type: 'GET',
            contentType: 'application/json',
            dataType: 'json',
            success: function(result) {
                if (result.length > 0) {
                    $('.sel-quan-huyen').append('<option value="-1">Quận/Huyện</option>');
                    for (res of result) {
                        $(".sel-quan-huyen").append(`<option value="${res.id}">${res._prefix} ${res._name}</option>`);
                    }
                    $('.sel-quan-huyen').niceSelect('update');
                    $('.sel-quan-huyen').change();
                }
            }
        });
    });

    $(".sel-quan-huyen").on('change', function() {
        var _district_id = $(this).val();
        if (_district_id === '-1') {
            return;
        }

        $('.sel-phuong-xa').empty();
        var _province_id = document.getElementsByClassName('sel-tinh-thanh')[0].value;
        $.ajax({
            url: `/api/get-phuong-xa-by-huyenid-cityid?_district_id=${_district_id}&_province_id=${_province_id}`,
            type: 'GET',
            contentType: 'application/json',
            dataType: 'json',
            success: function(result) {
                if (result.length > 0) {
                    $('.sel-phuong-xa').append('<option value="-1">Phường/Xã</option>');
                    for (res of result) {
                        $(".sel-phuong-xa").append(`<option value="${res.id}">${res._prefix} ${res._name}</option>`);
                    }
                    $('.sel-phuong-xa').niceSelect('update');
                    $(".sel-phuong-xa").change();
                }
            }
        });
    });

    $(".sel-phuong-xa").on('change', function() {
        if ($(this).val() === '-1') {
            return;
        }
        $('.sel-duong').empty();
        var _district_id = document.getElementsByClassName("sel-quan-huyen")[0].value;
        var _province_id = document.getElementsByClassName("sel-tinh-thanh")[0].value;
        $.ajax({
            url: `/api/get-duong-by-huyenid-cityid?_district_id=${_district_id}&_province_id=${_province_id}`,
            type: 'GET',
            contentType: 'application/json',
            dataType: 'json',
            success: function(result) {
                if (result.length > 0) {
                    $('.sel-duong').append('<option value="-1">Đường</option>');
                    for (res of result) {
                        $(".sel-duong").append(`<option value="${res.id}">${res._prefix} ${res._name}</option>`);
                    }
                    $('.sel-duong').niceSelect('update');
                }
            }
        });
    });

});
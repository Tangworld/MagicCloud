
    $(document).ready(function() {
        $("#btnSubmit").click(function() {
            Login();
        });
    });
function Login() {
    if (Check()) {
        LoginSuccess();
    }
}
function Check() {
    if ($("#ksbh").val() == "") {
        alert("准考证号不能为空！");
        $("#ksbh").focus();
        return false;
    }
    if ($("#Yzm").val() != $.cookie('ValidateCode')) {
        alert("验证码错误！")
        $("#Yzm").focus();
        return false;
    }
    return true;
}
function LoginSuccess() {
    $.ajax({
        type: "POST",
        url: "/zk/zkcj201204a",
        data: { ksbh: $("#ksbh").val()},
        beforeSend: function() { $("#msg").html("loading......正在提交请稍候。"); },
        success: function(data) {
            $("#msg").html(data).show();
            document.getElementById("valiCode").src = document.getElementById("valiCode").src+'?';
        }
    });
}

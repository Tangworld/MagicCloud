
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
        alert("׼��֤�Ų���Ϊ�գ�");
        $("#ksbh").focus();
        return false;
    }
    if ($("#Yzm").val() != $.cookie('ValidateCode')) {
        alert("��֤�����")
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
        beforeSend: function() { $("#msg").html("loading......�����ύ���Ժ�"); },
        success: function(data) {
            $("#msg").html(data).show();
            document.getElementById("valiCode").src = document.getElementById("valiCode").src+'?';
        }
    });
}

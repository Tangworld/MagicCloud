$("#submit").click(function(){
    $.ajax({
        url:'demo.php',
        type:"POST",
        data:$('#form').serialize(),
        success: function(data) {
            $("#result").text(data);
        }
    });
});

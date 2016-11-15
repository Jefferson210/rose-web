//$(document).ready(function(){
//    $("#fatherId").change(function(){
//        var father = $(this).val();
//        //        alert(father)
//        $.ajax({
//            url: "/genetic_banks/"+father,
//            type: "GET",
//            dataType: "JSON",
//            timeout: 10000,
//            success: function(res){
//                $("#fatherPicture").html("<img src='"+res.picture+"'"+"alt=''>")
////                alert('successfully');
//                console.log(res.picture)
//            },
//            error: function(xhr,response){
//               console.log("Error code is "+xhr.status+" and the error is "+response);
//            }
//        })
//    });
//
//})
var ContactForm=function(){return{initContactForm:function(){$("#sky-form3").validate({rules:{name:{required:!0},email:{required:!0,email:!0},message:{required:!0,minlength:10}},messages:{name:{required:"Var god fyll i namn"},email:{required:"Fyll i epost",email:"Fyll i giltlig epost"},message:{required:"Fyll i meddelande"}},submitHandler:function(e){$(e).ajaxSubmit({beforeSend:function(){$('#sky-form3 button[type="submit"]').attr("disabled",!0)},success:function(){$("#sky-form3").addClass("submited")}})},errorPlacement:function(e,i){e.insertAfter(i.parent())}})}}}();
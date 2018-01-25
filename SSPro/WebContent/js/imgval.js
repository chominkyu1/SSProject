$(function(){
          $("#btn").click(function(){
        	  var formData = new FormData();
        	  formData.append("memo", $("textarea[name=comment]").text());
        	  formData.append("01", $("input[name=image1")[0].files[0]);
              formData.append("02", $("input[name=image2")[0].files[1]);
              formData.append("03", $("input[name=image3")[0].files[2]);
        	 
        	  $.ajax({
        	    url: '/askas.do?',
        	    data: formData,
        	    processData: false,
        	    contentType: false,
        	    type: 'POST',
        	    success: function(data){
        	    	alert("EE");
                    $('#myModal').modal(show);
        	    }
        	  });

          });
	});


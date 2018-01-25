$('.upload-wrap input[type=file]').change(function(){
    var id = $(this).attr("id");
    var newimage = new FileReader();
    newimage.readAsDataURL(this.files[0]);
    newimage.onload = function(e){
      $('.uploadpreview.' + id ).css('background-image', 'url(' + e.target.result + ')' );
    }
  });




function date(){
	  
    var startDate = $('#startdate').val();
    var startDateArr = startDate.split('-');
    
    var endDate = $('#finishdate').val();
    var endDateArr = endDate.split('-');
              
    var startDateCompare = new Date(startDateArr[0], startDateArr[1], startDateArr[2]);
    var endDateCompare = new Date(endDateArr[0], endDateArr[1], endDateArr[2]);
      
    if(startDateCompare.getTime() > endDateCompare.getTime()) {
          
    	$('#exampleModal2').modal();
          
        return;
    }
      
    $("#exampleModal").modal();
};
$(document).ready(function() {
	$("#dtBox").DateTimePicker();
});

$("button").click(function() {
	$(".reservations").addClass("close");
	$(".thankyou").addClass("open");
});

function updateTextInput(val) {
	document.getElementById('textInput').value = val;
}

var didScroll;
var lastScrollTop = 0;
var delta = 5;
var navbarHeight = $('header').outerHeight();
$(window).scroll(function(event) {
	didScroll = true;
});
setInterval(function() {
	if (didScroll) {
		hasScrolled();
		didScroll = false;
	}
}, 250);

function hasScrolled() {
	var st = $(this).scrollTop();
	if (Math.abs(lastScrollTop - st) <= delta)
		return;
	if (st > lastScrollTop && st > navbarHeight) {
		$('header').removeClass('nav-down').addClass('nav-up');
	} else {
		if (st + $(window).height() < $(document).height()) {
			$('header').removeClass('nav-up').addClass('nav-down');
		}
	}
	lastScrollTop = st;
}


function date(){
	  
    var startDate = $('#Start').val();
    var startDateArr = startDate.split('-');
    
    var endDate = $('#End').val();
    var endDateArr = endDate.split('-');
              
    var startDateCompare = new Date(startDateArr[0], startDateArr[1], startDateArr[2]);
    var endDateCompare = new Date(endDateArr[0], endDateArr[1], endDateArr[2]);
      
    if(startDateCompare.getTime() > endDateCompare.getTime()) {
          
    	$('#modal').modal();
          
        return;
    }
      
    $("#form2").submit();
};
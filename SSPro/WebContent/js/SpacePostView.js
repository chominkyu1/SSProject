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
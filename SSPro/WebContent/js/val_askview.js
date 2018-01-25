$(function() {
	$('#btn').on('click', check);
})
function check() {
	if ($('#comment').val().trim() == '' || $('#01').val() == '' ||$('#02').val() == ''||$('#03').val() == '') {
		 $("#exampleModal").modal();
		 return false;
		}
}

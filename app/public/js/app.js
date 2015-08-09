
// Fix hamburger display for back button
var spinner = $("#spinner-form");

if (spinner.is(":checked")) {
  spinner.prop("checked", false);
}

// Toggle mennu
$("#menu-toggle").click(function(e) {
  $("#wrapper").toggleClass("toggled");
});

$(document).ready(function() {
    // append checkboxes to all li tags and update the progress bar when clicked
    $('<input type="checkbox" class="check">').prependTo('li').click(function () {
        var percent = (($(":checkbox:checked").length / $(":checkbox").length) * 100).toFixed(0) + "%";
        $('#complete .progress-bar').width(percent).html(percent);
    });
});

// annoy the user if they're about to leave/reload a page 
// (this will occur on any page that loads this file)
window.addEventListener("beforeunload", function (e) {
        var confirmationMessage = 'Leaving this page will reset all its checkboxes.';
        (e || window.event).returnValue = confirmationMessage; // IE
        return confirmationMessage; // others
});

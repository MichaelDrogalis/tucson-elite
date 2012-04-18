$(document).ready(function() {
    $("#events-calendar").fullCalendar({
	events: "/events.json"
    });
});
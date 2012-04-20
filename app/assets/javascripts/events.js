$(document).ready(function() {
    $("#events-calendar").fullCalendar({
	events: "/events.json"
    });

    $("#events-date-picker").datepicker({
	dateFormat: "yy-mm-dd"
    });
});


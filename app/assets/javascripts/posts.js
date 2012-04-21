$(document).ready(function() {
    var postContentSelector = $("#post-content-input");
    populatePreviewArea(postContentSelector);
    
    $(postContentSelector).keyup(function() {
	populatePreviewArea($(this));
        //syncInputAndPreviewHeights();
    });

    function populatePreviewArea(context) {
        var input = context.val();
        var previewHtml = markdown.toHTML(input);
        $("#post-preview").html(previewHtml);	
    }

    function syncInputAndPreviewHeights() {
	
    }
});
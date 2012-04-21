$(document).ready(function() {
    var postContentSelector = $("#post-content-input");
    populatePreviewArea(postContentSelector);
    syncInputAndPreviewHeights();
    
    postContentSelector.keyup(function() {
        populatePreviewArea($(this));
        syncInputAndPreviewHeights();
    });

    function populatePreviewArea(context) {
        if (context.length) {
            var input = context.val();
            var previewHtml = markdown.toHTML(input);
            $("#post-preview").html(previewHtml);	
	}
    }

    function syncInputAndPreviewHeights() {
        var postPreview = $("#post-preview");
        postContentSelector.height(postPreview.height());
    }
});
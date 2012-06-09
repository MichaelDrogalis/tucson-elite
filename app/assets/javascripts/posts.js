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

    $(window).scroll(function() {
	if($(this).scrollTop() != 0) {
	    $('#toTop').fadeIn();
	} else {
	    $('#toTop').fadeOut();
	}
    });
 
    $('#toTop').click(function() {
	$('body,html').animate({scrollTop:0},800);
    });

    $(".post-tag-input").tagit({
        itemName: "post",
	fieldName: "tag_list"
    });
});


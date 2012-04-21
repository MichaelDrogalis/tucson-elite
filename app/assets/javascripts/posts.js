$(document).ready(function() {
    $("#post-content-input").keyup(function() {
        var input = $(this).val();
        var previewHtml = markdown.toHTML(input);
        $("#post-preview").html(previewHtml);
    });
});
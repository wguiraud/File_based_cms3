$(document).ready(function() {

    $(".delete").submit(function(event) {
        event.preventDefault()
        event.stopPropagation()

        var ok = confirm('Are you sure you want to delete this document?');

        if (ok) {
            //this.submit();
            var form = $(this);

            var request = $.ajax({
                url: form.attr("action"),
                method: form.attr("method")
            });

            request.done(function (data, textStatus, jqXHR) {
                if (jqXHR.status === 204) {
                    form.closest("li").remove();
                } else if (jqXHR.status === 200) {
                    document.location = data;
                }
            });

            //request.fail(function() {
            //});
        }
    });
});
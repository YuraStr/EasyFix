function addRow() {
    $("#members_table tr:last").after('' +
        '<tr>' +
        '<td>Name</td>' +
        '<td>Type</td>' +
        '<td><a class="link-remove-row"><span class=\'glyphicon glyphicon-trash\'></span></a></td>' +
        '</tr>');
}

$(document).on('turbolinks:load', function() {
    $(".table-class .link-remove-row").on("click", function (event) {
        console.log(event);
        $(event.currentTarget).closest("tr").remove();
    });
});

function addRow() {
    let row = $('<tr>' +
        '<td>Name</td>' +
        '<td>Type</td>' +
        '</tr>');

    let trash = $('<td><a class="link-remove-row"><span class=\'glyphicon glyphicon-trash\'></span></a></td>');

    trash.click(function (event) {
        $(event.currentTarget).closest("tr").remove();
    });
    row.append(trash);

    $("#members_table tr:last").after(row);
}
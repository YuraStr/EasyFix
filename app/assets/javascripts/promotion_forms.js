function addRow() {
    let row = $('<tr>' +
        '<td><input type="text" class="form-control" /></td>' +
        '</tr>');

    let arr = [
        {val : 1, text: 'One'},
        {val : 2, text: 'Two'},
        {val : 3, text: 'Three'}
    ];

    let select_div = $('<div>');

    let sel = $('<select>').addClass('form-control');
    $(arr).each(function() {
        sel.append($("<option>").attr('value',this.val).text(this.text));
    });

    let trash = $('<td><a class="link-remove-row"><span class=\'glyphicon glyphicon-trash\'></span></a></td>');

    trash.click(function (event) {
        $(event.currentTarget).closest("tr").remove();
    });

    select_div.append(sel);
    row.append($('<td>').append(select_div)).append(trash);

    $("#members_table tr:last").after(row);
}
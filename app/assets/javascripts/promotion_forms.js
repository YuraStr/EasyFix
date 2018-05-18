function addRow() {
    let row = $('<tr>' +
        '<td><input type="text" class="form-control" /></td>' +
        '</tr>');

    let dropdown_div = document.createElement("div");
    dropdown_div.className = "dropdown";

    let dropdown_button = document.createElement("a");
    dropdown_button.className = "btn btn-default dropdown-toggle";
    dropdown_button.id = "typesDropdownMenu";
    dropdown_button.role = "button";
    dropdown_button.setAttribute("aria-haspopup", "true");
    dropdown_button.setAttribute("aria-expanded", "false");
    dropdown_button.appendChild(document.createTextNode("undefined"));

    dropdown_div.append(dropdown_button);

    // let dropdown = $('<div class="dropdown"><a class="btn btn-default dropdown-toggle" id="dropdownMenuButton" role="button" aria-haspopup="true" aria-expanded="false">----</a>' +
    //     '<div class="dropdown-menu" aria-labelledby="dropdownMenuButton">' +
    //     '<a class="dropdown-item">First item</a>' +
    //     '</div>' +
    //     '</div>');
    let trash = $('<td><a class="link-remove-row"><span class=\'glyphicon glyphicon-trash\'></span></a></td>');

    trash.click(function (event) {
        $(event.currentTarget).closest("tr").remove();
    });
    row.append(dropdown_div).append(trash);

    $("#members_table tr:last").after(row);
}
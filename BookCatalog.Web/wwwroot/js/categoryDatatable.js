$(document).ready(function () {
    var t = $("#categoryDatatable").DataTable({
        "searchDelay": 500,
        "processing": true,
        "serverSide": true,
        "filter": true,
        "ajax": {
            "url": "/Category/GetCategories",
            "type": "POST",
            "datatype": "json"
        },
        "columnDefs": [
            { "targets": [0], "visible": false }

        ],
        "columns": [
            { "data": "id", "name": "Id", "autoWidth": true, "width": "0%" },
            { "data": "name", "name": "Name", "autoWidth": true, "width": "80%" },
            {
                "render": function (data, type, row) {
                    return "<a class='btn btn-outline-secondary btn-sm' href='Category/details/" + row.id + "'>Details</a>  \
                            <a class='btn btn-outline-success btn-sm' href = 'Category/edit/" + row.id + "'>Edit</a>  \
                            <a class='btn btn-outline-danger btn-sm' href='Category/delete/" + row.id + "'>Delete</a>";
                },
                "width": "20%", "bSortable": false
            }

        ]
    });
    t.columns.adjust();
});  
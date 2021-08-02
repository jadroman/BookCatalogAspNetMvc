$(document).ready(function () {
    var t = $("#categoryDatatable").DataTable({
        "responsive": true,
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
            { "targets": [0], "visible": false },
            { "targets": [1] }

        ],
        "columns": [
            { "data": "id", "name": "Id" },
            { "data": "name", "name": "Name" },
            {
                "data": "id",
                "render": function (data, type, row) {
                    return "<a class='btn btn-outline-secondary btn-sm' href='Category/details/" + row.id + "'>Details</a>  \
                            <a class='btn btn-outline-success btn-sm' href = 'Category/edit/" + row.id + "'>Edit</a>  \
                            <a class='btn btn-outline-danger btn-sm' href='Category/delete/" + row.id + "'>Delete</a>";
                },
                "bSortable": false
            }

        ]
    });
    t.columns.adjust();
});  
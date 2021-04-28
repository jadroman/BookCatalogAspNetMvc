$(document).ready(function () {
    var t = $("#bookDatatable").DataTable({
        "searchDelay": 500,
        "processing": true,
        "serverSide": true,
        "filter": true,
        "ajax": {
            "url": "/Book/GetBooks",
            "type": "POST",
            "datatype": "json"
        },
        "columnDefs": [
            { "targets": [0], "visible": false }

        ],
        "columns": [
            { "data": "id", "name": "Id", "autoWidth": true, "width": "0%" },
            { "data": "title", "name": "Title", "autoWidth": true, "width": "80%" },
            {
                "render": function (data, type, row) {
                    return "<a class='btn btn-outline-secondary btn-sm' href='Book/details/" + row.id + "'>Details</a>  \
                            <a class='btn btn-outline-success btn-sm' href = 'Book/edit/" + row.id + "'>Edit</a>  \
                            <a class='btn btn-outline-danger btn-sm' href='Book/delete/" + row.id + "'>Delete</a>";
                },
                "width": "20%", "bSortable": false
            }

        ]
    });
    t.columns.adjust();
});  
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
            { "targets": [0], "visible": false, "width": "0px" },
            { "targets": [1], "width": "80%" },
            { "targets": [2], "width": "20%" }

        ],
        "columns": [
            { "data": "id", "name": "Id" },
            { "data": "title", "name": "Title"},
            {
                "render": function (data, type, row) {
                    return "<a class='btn btn-outline-secondary btn-sm' href='Book/details/" + row.id + "'>Details</a>  \
                            <a class='btn btn-outline-success btn-sm' href = 'Book/edit/" + row.id + "'>Edit</a>  \
                            <a class='btn btn-outline-danger btn-sm' href='Book/delete/" + row.id + "'>Delete</a>";
                }
                , "bSortable": false
            }

        ]
    });
    t.columns.adjust();
});  
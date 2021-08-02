$(document).ready(function () {
    var t = $("#bookDatatable").DataTable({
        initComplete: function () {
            $('input[type=search]').attr('placeholder', 'by title or author');
            $('.container').css('max-width', '100%')
        },
        "responsive": true,
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
            { "targets": [1] },
            { "targets": [2] },
            { "targets": [3] },
            { "targets": [4] },
            { "targets": [5] },
            { "targets": [6] }

        ],
        "columns": [
            { "data": "id", "name": "Id" },
            { "data": "title", "name": "Title" },
            { "data": "author", "name": "Author" },
            { "data": "year", "name": "Year" },
            { "data": "publisher", "name": "Publisher" },
            { "data": "collection", "name": "Collection" },
            {
                "data": "id",
                "render": function (data, type, row) {
                    return "<a class='btn btn-outline-secondary btn-sm' href='Book/details/" + row.id + "'>Details</a>  \
                            <a class='btn btn-outline-success btn-sm' href = 'Book/edit/" + row.id + "'>Edit</a>  \
                            <a class='btn btn-outline-danger btn-sm' href='Book/delete/" + row.id + "'>Delete</a>";
                },
                "bSortable": false
            }

        ]
    });
    t.columns.adjust();
});  
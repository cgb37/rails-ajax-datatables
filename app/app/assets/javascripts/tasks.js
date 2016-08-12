/**
 * Created by cbrownroberts on 8/12/16.
 */


$(document).ready(function () {

    $('#tasks-datatable').DataTable({
        ajax: '/tasks.json',
        // autoWidth: false,
        pagingType: 'full_numbers',
        processing: true,
        serverSide: true,
        responsive: true,
        columns: [
            { "data": 0 },
            { "data": 1 },
            { "data": 2 },
        ],
        sorting: [[0, 'asc'], [1, 'asc']]
        // Optional, if you want full pagination controls.
        // Check dataTables documentation to learn more about available options.
        // http://datatables.net/reference/option/pagingType
    });

});

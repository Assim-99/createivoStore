





$(document).ready(function () {

    $('#tableitems').DataTable({
       
        paging: true,           // تفعيل الترقيم
        pageLength: 10,          // عدد الصفوف في كل صفحة
        lengthChange: true,     // يظهر Dropdown لتغيير عدد الصفوف
        responsive: true,

        language: {
            search: "Search :",
            paginate: {
                previous: "Previous",
                next: "Next"
            },
            zeroRecords: "No Data Found",
            infoEmpty: "No Data Found",
        },
        
    })

});




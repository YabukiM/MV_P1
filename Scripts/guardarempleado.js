function getParameterByName(name) {
    if (name !== "" && name !== null && name != undefined) {
        name = name.replace(/[\[]/, "\\[").replace(/[\]]/, "\\]");
        var regex = new RegExp("[\\?&]" + name + "=([^&#]*)"),
            results = regex.exec(location.search);
        return results === null ? "" : decodeURIComponent(results[1].replace(/\+/g, " "));
    } else {
        var arr = location.href.split("/");
        return arr[arr.length - 1];
    }

}

function guardarempleado() {

    var No_emp = getParameterByName("No_emp");

    $.ajax({
        type: "POST",
        url: urlGuardarEmpleado,
        async: true,
        data: {

            No_emp: No_emp,
            nombre: document.getElementById("nombre").value,
            puesto: document.getElementById("puesto").value,
            seriePC: document.getElementById("seriePC").value




        },
        success: function (data) {

            location.href = "../Empleado/DatosEmpleados";
        },
        error: function (xhr, status, error) {
            alert(error);
        }
    });
}
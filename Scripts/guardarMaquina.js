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

function guardarMaquina() {

    var Conteo = getParameterByName("Conteo");

    $.ajax({
        type: "POST",
        url: urlGuardarMaquina,
        async: true,
        data: {

            Conteo: Conteo,
            Contratos: document.getElementById("Contratos").value,
            Producto: document.getElementById("Producto").value,
            Descripcion: document.getElementById("Descripcion").value,
            SeriePC: document.getElementById("Asignada").value,
            SeriePC: document.getElementById("Estatuss").value,
            SeriePC: document.getElementById("NombreUsuarioPuesto").value,
            SeriePC: document.getElementById("NoCartaCustodia").value




        },
        success: function (data) {

            location.href = "../Maquinas/DatosMaquinas";
        },
        error: function (xhr, status, error) {
            alert(error);
        }
    });
}
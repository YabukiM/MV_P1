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

function guardarTienda() {

    var id = getParameterByName("ID_Tienda");

    $.ajax({
        type: "POST",
        url: urlGuardarTienda,
        async: true,
        data: {

            ID_Tienda: id,
            DeptoTienda: document.getElementById("DeptoTienda").value,
            NoTienda: document.getElementById("NoTienda").value,
            NombreTienda: document.getElementById("NombreTienda").value,
            DireccionTienda: document.getElementById("DireccionTienda").value,
            SeriePC: document.getElementById("SeriePC").value,
           


        },
        success: function (data) {

            location.href = "../Tiendas/DatosTiendas";
        },
        error: function (xhr, status, error) {
            alert(error);
        }
    });
}
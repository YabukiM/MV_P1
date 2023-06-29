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

function guardarContratos() {

    var id_Contrato = getParameterByName("id_Contrato");

    $.ajax({
        type: "POST",
        url: urlGuardarContrato,
        async: true,
        data: {

            id_Contrato: id_Contrato,
            producto_contrato: document.getElementById("producto_contrato").value,
            descripcion: document.getElementById("descripcion").value,
            serie: document.getElementById("serie").value,
            destino: document.getElementById("destino").value,
            comentarios: document.getElementById("comentarios").value,
            fecha_surtido: document.getElementById("fecha_surtido").value,
            recibio: document.getElementById("recibio").value,
            Folio_pedido: document.getElementById("Folio_pedido").value,
            fecha_pedido: document.getElementById("fecha_pedido").value,
            SeriePC: document.getElementById("SeriePC").value
        },
        success: function (data) {

            location.href = "../Contratos/DatosContratos";
        },
        error: function (xhr, status, error) {
            alert(error);
        }
    });
}
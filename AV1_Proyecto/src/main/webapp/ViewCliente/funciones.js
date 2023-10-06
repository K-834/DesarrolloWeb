$(document).ready(function () {
    $("div #btnBorrar").click(function () {
        var idp = $(this).closest("div").find("input#idp").val();
        Swal.fire({
            title: 'Are you sure?',
            text: "You won't be able to revert this!",
            icon: 'warning',
            showCancelButton: true,
            confirmButtonColor: '#3085d6',
            cancelButtonColor: '#d33',
            confirmButtonText: 'Yes, delete it!'
        }).then((result) => {
            if (result.isConfirmed) {
                eliminar(idp);
                Swal.fire(
                    'Deleted!',
                    'Your file has been deleted.',
                    'success'
                ).then((result) => {
                    if (result.isConfirmed) {
                        window.location.href = "CatalogoServlet?accion=Carrito";
                    }
                });
            }
        });
    });

    function eliminar(idp) {
        var url = "/AV1_Proyecto/CatalogoServlet?accion=Borrar";
        $.ajax({
            type: 'POST',
            url: url,
            data: "idp=" + idp,
            success: function (data, textStatus, jqXHR) {
                console.log("llegue aqui")
                console.log(url)
                console.log(idp)
                console.log(jqXHR)
                console.log(textStatus)
                console.log(data)
            }
        });
    }
    
    $("input#Cantidad").keydown(function (event) {
        if (event.keyCode === 13) { 
            event.preventDefault();
            var idp = $(this).closest("div").find("input#idprod").val();
            var cantidad = $(this).val();

            var url = "/AV1_Proyecto/CatalogoServlet?accion=ActualizarCantidad";
            $.ajax({
                type: 'POST',
                url: url,
                data: "idp=" + idp + "&Cantidad=" + cantidad,
                success: function (data, textStatus, jqXHR) {
                    console.log(cantidad);
                    console.log(idp);
                    alert("SE HIZO EL CAMBIO DE CANTIDAD");
                    window.location.href = "CatalogoServlet?accion=Carrito";
                }
            });
        }
    });
    
    
});

<?php
$totalPago = $_GET['total1'] ?? ($_SESSION['total'] ?? 0);
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Pago</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
</head>

<body>
    <!-- The Modal -->
    <div class="modal fade" id="myModalPago">
        <div class="modal-dialog modal-xl">
            <link href="../IniciarSesion/modalG.css" rel="stylesheet">
            <div class="modal-content">

                <!-- Modal Header -->
                <div class="modal-header">
                    <h4 class="modal-title"></h4>
                    <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                </div>

                <!-- Modal body -->
                <div class="modal-body">
                    <div class="registro1">
                        <div class="modal-body">
                            <div class="registro1">
                                <div class="tamañoColumna">
                                    <div class="regColumna">
                                        <div class="pago">
                                            <h1>Pago:</h1>
                                            <center>
                                                <p>Monto de Pago:</p>
                                                <h2><?php echo $totalPago; ?></h2>
                                            </center>
                                        </div>
                                    </div>
                                    <div class="imgRColumna">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Modal footer -->
                <div class="modal-footer">
                    <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>
</body>

</html>

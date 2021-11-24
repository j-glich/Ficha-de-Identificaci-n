<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registro</title>
    <link rel="stylesheet" href="estilos.css">
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.2/jquery.min.js"></script>
    <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
</head>
<body>
    <form action="" method="POST" id="form">
        <div class="form">
            <h1>Registro</h1>
            <div class="grupo">
                <input type="text" name="matricula" id="matricula" autocomplete="off" required><span class="barra"></span>
                <label for="">Matricula</label>
            </div>
            <div class="grupo">
                <input type="text" name="" id="name" required><span class="barra"></span>
                <label for="">Nombre completo</label>
            </div>
            <button id="registrar" class="registrar" type="submit">Suscribirte</button>
        </div>
    </form>
</body>
</html>
<script>
$(document).ready(function(){
$(document).on("click", "#registrar", function(e){
    e.preventDefault();     
    matricula = document.getElementById('matricula').value;
    nombre = document.getElementById('name').value;
    $.ajax({
        type : 'POST',
        url:'in_registrar.php',
        data: {
            matricula : matricula,
            nombre : nombre,  
        },
        dataType: 'JSON',
        success: function(r){
                if(r==1){
                    window.location="../index.php?reg=1";
                  }else if(r==0){
                    window.location="../index.php?reg=0";
                }
        } 
    });
});
});
</script>
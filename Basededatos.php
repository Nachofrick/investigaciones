<?php
    $servername = "localhost";
    $database = "Torneos";
    $username = "root";
    $password = "";
    $conn = mysqli_connect($servername, $username, $password, $database);
    // if (!$conn){
    //     die("Conection failed: ".mysqli_connect_error());
    // }
    // echo "Conected successfully";
    // mysqli_close($conn);
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sit</title>
</head>
<body>
    <header>

    </header>
    <main>
        <section class="buscador">
            <div class="filtro">
                <form method="post">
                    <input type="text" placeholder="Nombre..." class="xnombre">
                    <select class="xjuego" id="#">
                        <option value="">Juego o deporte</option>
                        <option value="">--</option>
                    </select>
                    <select class="xllaves" id="#">
                        <option value="">Cantidad de llaves</option>
                        <option value="">--</option>
                    </select>
                    <button class="buscar" type="submit">Buscar</button>
                </form>
            </div>
            <div class="tourn">
                <table class="tabla">
                    <tr>
                        <th>Nombre Torneo</th>
                        <th>Juego o deporte</th>
                        <th>Cantidad de llaves</th>
                    </tr>
                    <!-- Cmabio en php -->
                    <?php
                    $sql="SELECT * from torneo";
                    $result=mysqli_query($conn,$sql);

                    while($mostrar=mysqli_fetch_array($result)){
                        ?>
                    <tr>
                        <td><?php echo $mostrar['Id_Torneo']?></td>
                        <td><?php echo $mostrar['N_torneo']?></td>
                        <td><?php echo $mostrar['N_jue_dep']?></td>
                        <td><?php echo $mostrar['Cant_llaves']?></td>
                        <td><?php echo $mostrar['Id_Jue_Dep']?></td>
                    </tr>
                <?php
                }
                ?>
                </table>
            </div>
        </section>
    </main>
    <footer>

    </footer>
</body>
</html>
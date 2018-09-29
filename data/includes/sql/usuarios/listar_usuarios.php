<?php
include("../../class/conexion.php");
	$post_variables = file_get_contents("php://input");
    $variable = json_decode($post_variables);

    if(isset($variable->control) && $variable->control == "SI"){

        $rowusuarios = array();

        $selec_usuarios="SELECT * FROM directorio";
        $result = mysql_query($selec_usuarios);


        while ($row_usuarios = mysql_fetch_assoc($result)) {
            $rowusuarios[] = $row_usuarios;
        }

        $json_query = json_encode($rowusuarios);
        $json_vista = html_entity_decode(json_encode($json_query));
        
        echo $json_query;
        
    } else {
    	echo "No ingreso al control";
    }
?>
<?php
    include("../../class/conexion.php");
	$post_variables = file_get_contents("php://input");
    $variable = json_decode($post_variables);
    $id_user = $variable->id_user;
    //$_POST['id_user'];

    if(isset($variable->control) && $variable->control == "SI"){

        $rowusuarios = array();

        if($variable->query == "all"){
            $selec_usuarios="SELECT id, name, last_nam, tel, img_ruta, img_nam, img_form FROM `directorio`";
        }
        if($variable->query == "person"){
            $selec_usuarios="SELECT id, name, last_nam, tel, img_ruta, img_nam, img_form FROM `directorio` WHERE id = $id_user";
        }
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
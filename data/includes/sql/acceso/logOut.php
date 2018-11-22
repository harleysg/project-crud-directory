<?php
include("../../class/variables.php");
session_start();
session_destroy();
header("location:".$URLServer."/".$folderProyect."/".$URLlogIn);
?>
<?php

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 * Description of logout
 *
* @author Jair
 */
session_start();
unset($_SESSION["id_Cliente"]);
session_unset();
session_destroy();
header("Location:../index.php");
exit;       
 

        
?>
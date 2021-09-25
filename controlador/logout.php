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
class logout {
    
    public function cerrarSesion() {
        session_start();
        unset($_SESSION["variable de session"]);
        session_unset();
        session_destroy();
        exit;        
    }
    
}
header("Location:../index.php");
?>
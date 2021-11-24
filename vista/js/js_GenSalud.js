                        
$(document).ready(function(){

    document.querySelector('#radio2').checked = true;
    document.querySelector('#radio7').checked = true;


   
 
  
});
function Desabilitar(id,id_che) {
    valor = document.getElementById(id).value
    if(valor == ""){
        document.getElementById(id).disabled=true;
        document.getElementById(id_che).checked = false;
    }
}
      function crearInput(){
                var z = document.createElement('div');
                z.setAttribute('id','matricula');
                z.setAttribute('class','form');
                z.innerHTML = "<input class='textbox' type='text' autocomplete='off' name='Especifique1' id='id_Especificacion' placeholder=' '><label id='id_eti1' class='form_label'>Especifique:</label>";
                //label
                document.getElementById('esc1').appendChild(z);
                document.getElementById("radio1").disabled=true;      
            }
            function crearotro(){
               //input 
                var z = document.createElement('div');
                z.setAttribute('id','matricula');
                z.setAttribute('class','form');
                z.innerHTML = "<input class='textbox' type='text' autocomplete='off' name='Especifique2' id='id_Especificacion2' placeholder=' '><label id='id_eti2' class='form_label'>Especifique:</label>";
                //label
                document.getElementById('esc3').appendChild(z); 
                document.getElementById("radio11").disabled=true;    
            }
            function habilitarE(id){
                document.getElementById(id).disabled=false; 
            }
            function Eliminar(id,id1){
                var x = document.getElementById(id);
                var y = document.getElementById(id1);
                if(x && y){
                    padre = x.parentNode;
                    padre.removeChild(x);
                    padre1 = y.parentNode;
                    padre1.removeChild(y);
                    document.getElementById("radio1").disabled=false;
                    
                    }
                }
                function Eliminar3(id,id1){
                    var x = document.getElementById(id);
                    var y = document.getElementById(id1);
                    if(x && y){
                        padre = x.parentNode;
                        padre.removeChild(x);
                        padre1 = y.parentNode;
                        padre1.removeChild(y);
                        document.getElementById("radio11").disabled=false;
                        
                        }
                }
                function Eliminar4(id,id1){
                    var x = document.getElementById(id);
                    var y = document.getElementById(id1);
                    if(x && y){
                        padre = x.parentNode;
                        padre.removeChild(x);
                        padre1 = y.parentNode;
                        padre1.removeChild(y);
                        document.getElementById("radio15").disabled=false;
                        document.querySelectorAll('[name=grupo3]').forEach((x) => x.checked = false);
                        
                        }
                }
                function habilitar(id,id2,id3,id4){
                document.getElementById(id).disabled=false; 
                document.getElementById(id2).disabled=false;
                document.getElementById(id3).disabled=false;
                document.getElementById(id4).disabled=false; 
            }
            function desahabilitar(id,id2,id3,id4,id5,id6){
                document.getElementById(id).disabled=true; 
                document.getElementById(id2).disabled=true;
                document.getElementById(id3).disabled=true;
                document.getElementById(id4).disabled=true;
                Eliminar(id5,id6);
                document.querySelectorAll('[name=grup]').forEach((x) => x.checked = false);
            }

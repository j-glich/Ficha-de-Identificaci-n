            function habilitar(id,id2){
                document.getElementById(id).disabled=false; 
                document.getElementById(id2).disabled=false;    
            }
            function desahabilitar(id,id2){
                document.getElementById(id).disabled=true; 
                document.getElementById(id2).disabled=true; 
            }
            function crearotro(){
                var z = document.createElement('div');
                z.setAttribute('id','matricula');
                z.setAttribute('class','form');
                z.innerHTML = "<input class='textbox' type='text' autocomplete='off' name='Especifique' id='id_Especificacion' placeholder=' '><label id='id_eti1' class='form_label'>Especifique:</label>";
                //label
                document.getElementById('esc3').appendChild(z); 
                document.getElementById("radio11").disabled=true;    
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
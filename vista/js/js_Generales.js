            function crearInput(){
                var z = document.createElement('div');
                z.setAttribute('id','matricula');
                z.setAttribute('class','form');
                z.innerHTML = "<input class='textbox' type='text' autocomplete='off' name='numhijos' id='id_input' placeholder=' '><label class='form_label'>Numero de hijos:</label>";
                //label
                document.getElementById('cam2').appendChild(z);
                document.getElementById("radio1").disabled=true;    
            }
            function Eliminar(id,id1){
                var x = document.getElementById(id);
                var y = document.getElementById(id1);
                if(!x && !y){
                }else{
                    padre = x.parentNode;
                    padre.removeChild(x);
                    padre1 = y.parentNode;
                    padre1.removeChild(y);
                    document.getElementById("radio1").disabled=false; 
                }
            }
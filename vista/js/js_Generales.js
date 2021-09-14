            function crearInput(){
                var z = document.createElement('div');
                z.setAttribute('id','matricula');
                z.setAttribute('class','form');
                z.innerHTML = "<input class='textbox' type='text' autocomplete='off'  onkeypress='return solonumeros(event)' maxlength='1' name='numhijos' id='id_input' placeholder=' '><label id='id_eti' class='form_label'>Numero de hijos:</label>";
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
        
            function solonumeros(e) {
                key= e.keyCode || e.which;
                teclado = String.fromCharCode(key);
                numero="0123456789";
                especiales ="8-37-38-46"; //array
                teclado_es = false;
                for (var i in especiales) {
                    if (key == especiales[i]) {
                        teclado_es = true;
                    }
                }
                if(numero.indexOf(teclado) == -1 && !teclado_es){
                return false;
            }
    
            }
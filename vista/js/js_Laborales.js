            function habilitar(id,id2){
                document.getElementById(id).disabled=false; 
                document.getElementById(id2).disabled=false;    
            }
            function desahabilitar(id,id2){
                document.getElementById(id).disabled=true; 
                document.getElementById(id2).disabled=true; 
            }
            function crearotro(){
               //input 
                var x = document.createElement('input');
                x.setAttribute('type','text');
                x.setAttribute('placeholder','Especifique');
                x.setAttribute('class','controls');
                x.setAttribute('name','Especifique');
                x.setAttribute('id','id_Especificacion');
                document.getElementById('esc3').appendChild(x); 
                document.getElementById("radio11").disabled=true;    
            }
            function Eliminar3(id){
                var x = document.getElementById(id);
                if(x){
                    padre = x.parentNode;
                    padre.removeChild(x);
                    document.getElementById("radio11").disabled=false;                 
                    }
                }
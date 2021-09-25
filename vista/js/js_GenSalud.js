            function crearInput(){
               //input 
                var x = document.createElement('input');
                x.setAttribute('type','text');
                x.setAttribute('placeholder','Especifique');
                x.setAttribute('class','controls');
                x.setAttribute('name','Especifique1');
                x.setAttribute('id','id_Especificacion');
                document.getElementById('esc1').appendChild(x); 
                document.getElementById("radio1").disabled=true;    
            }
            function crearotro(){
               //input 
                var x = document.createElement('input');
                x.setAttribute('type','text');
                x.setAttribute('placeholder','Especifique');
                x.setAttribute('class','controls');
                x.setAttribute('name','Especifique2');
                x.setAttribute('id','id_Especificacion2');
                document.getElementById('esc3').appendChild(x); 
                document.getElementById("radio11").disabled=true;    
            }
            function crearotro1(){
               //input 
                var x = document.createElement('input');
                x.setAttribute('type','text');
                x.setAttribute('placeholder','Especifique3');
                x.setAttribute('class','controls');
                x.setAttribute('name','Especifique');
                x.setAttribute('id','id_Especificacion3');
                document.getElementById('div').appendChild(x); 
                document.getElementById("radio15").disabled=true;    
            }
            function Eliminar(id){
                var x = document.getElementById(id);
                if(x){
                    padre = x.parentNode;
                    padre.removeChild(x);
                    document.getElementById("radio1").disabled=false;                 
                    }
                }
                function Eliminar3(id){
                var x = document.getElementById(id);
                if(x){
                    padre = x.parentNode;
                    padre.removeChild(x);
                    document.getElementById("radio11").disabled=false;                 
                    }
                }
                function Eliminar4(id){
                var x = document.getElementById(id);
                if(x){
                    padre = x.parentNode;
                    padre.removeChild(x);
                    document.getElementById("radio15").disabled=false;                 
                    }
                }
                function habilitar(id,id2,id3,id4){
                document.getElementById(id).disabled=false; 
                document.getElementById(id2).disabled=false;
                document.getElementById(id3).disabled=false;
                document.getElementById(id4).disabled=false; 
            }
            function desahabilitar(id,id2,id3,id4,id5){
                document.getElementById(id).disabled=true; 
                document.getElementById(id2).disabled=true;
                document.getElementById(id3).disabled=true;
                document.getElementById(id4).disabled=true;
                Eliminar(id5);
                document.querySelectorAll('[name=grup]').forEach((x) => x.checked = false);
            }

            function crearInput(){
               //input 
                var x = document.createElement('input');
                x.setAttribute('type','text');
                x.setAttribute('placeholder','Numero de hijos');
                x.setAttribute('class','controls');
                x.setAttribute('name','numhijos');
                x.setAttribute('id','id_input');
                //label
                var y = document.createElement('label');    
                y.setAttribute('id','id_eti'); 
                y.setAttribute('class','label');
                y.innerHTML ="Cuantos:";
                document.getElementById('cam2').appendChild(y);
                document.getElementById('cam2').appendChild(x);
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
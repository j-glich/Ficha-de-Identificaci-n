            function crearInput(){
               //input 
                var x = document.createElement('input');
                x.setAttribute('type','text');
                x.setAttribute('placeholder','Especialidad');
                x.setAttribute('class','controls');
                x.setAttribute('name','especilidad');
                x.setAttribute('id','id_');
                document.getElementById('esc').appendChild(x); 
                document.getElementById("radio3").disabled=true;    
            }
            function crearotro(){
               //input 
                var x = document.createElement('input');
                x.setAttribute('type','text');
                x.setAttribute('placeholder','Cual?');
                x.setAttribute('class','controls');
                x.setAttribute('name','tibeca');
                x.setAttribute('id','id_beca');
                document.getElementById('esc1').appendChild(x); 
                document.getElementById('radio11').disabled=true; 
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
            }
            function Eliminar(id){
                var x = document.getElementById(id);
                if(x){
                    padre = x.parentNode;
                    padre.removeChild(x);
                    document.getElementById("radio3").disabled=false;      
                }
                }
                function Eliminar1(id){
                    var x = document.getElementById(id);
                    if(x){
                        padre = x.parentNode;
                        padre.removeChild(x);  
                        document.getElementById("radio11").disabled=false;
                }
                }

            function crearInput(){
                var z = document.createElement('div');
                z.setAttribute('id','control');
                z.setAttribute('class','form');
                z.innerHTML = "<input class='textbox' type='text' autocomplete='off' name='especilidad' id='id_' placeholder=' '><label id='id_eti' class='form_label'>Especialidad:</label>";
                //label
                document.getElementById('esc').appendChild(z);
                document.getElementById("radio3").disabled=true;    
            }
            function delete1(id,id1){
                var x = document.getElementById(id);
                var y = document.getElementById(id1);
                if(!x && !y){
                }else{
                    padre = x.parentNode;
                    padre.removeChild(x);
                    padre1 = y.parentNode;
                    padre1.removeChild(y);
                    document.getElementById("radio3").disabled=false; 
                }
            }
            function crearotro(){
                
                var z = document.createElement('div');
                z.setAttribute('id','control');
                z.setAttribute('class','form');
                z.innerHTML = "<input class='textbox' type='text' autocomplete='off' name='tibeca' id='id_beca' placeholder=' '><label id='id_eti' class='form_label'>Cual?</label>";
                document.getElementById('esc1').appendChild(z);
                document.getElementById("radio11").disabled=true;    
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
                Eliminar(id5);
                Eliminar(id6);
                document.querySelectorAll('[name=grup]').forEach((x) => x.checked = false);
            }
            function Eliminar(id){
                var x = document.getElementById(id);
                if(x){
                    padre = x.parentNode;
                    padre.removeChild(x);
                    document.getElementById("radio3").disabled=false;      
                }
                }
                function Eliminar1(id , id1){
                    var x = document.getElementById(id);
                    var y = document.getElementById(id1);
                    if(!x && !y){
                    }else{
                        padre = x.parentNode;
                        padre.removeChild(x);
                        padre1 = y.parentNode;
                        padre1.removeChild(y);
                        document.getElementById("radio11").disabled=false; 
                    }

                }

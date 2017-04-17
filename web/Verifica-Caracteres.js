
        
            function SomenteNumero(e){
                var tecla;
                     tecla = (window.event)?event.keyCode:e.which;   
                        if((tecla>47 && tecla<58 )) {
                            return true;
                        }
                        else if ( tecla==44 || tecla==46 ){ 
                            return true;
                        }
                        else{
                alert(" Insira apenas caracteres numericos");
            return false;
            }
        }

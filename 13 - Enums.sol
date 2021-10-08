pragma solidity ^0.5.11;

//Sao usados para representar diferentes opcoes

contract Enums{
    //1. Declarar Enums
    //2. Usar Enums
    //3. Enums como argumentos
    
    //1.
    enum STATE {INATIVO, ATIVO. PRO, CANCELADO}
    
    //instanciando uma variavel
    STATE state;
    
    
    //2 Usando Enums
    function setToAtivo() external{
        state = STATE.ATIVO;
    }
    
    function setToInativo() external{
        if (state == STATE.ATIVO){
            //fazer alguma coisa
            //como mudar de estado?
        }
    }
    
    //3. 
    function bar(STATE _state) {
        //para funcoes externas, pode receber um parametro externo para modificar um estado
        //1 pode ser ativo e 0 inativo
        // um if ira alterar o estado
    }
    
    struct User {
        STATE state;
    }
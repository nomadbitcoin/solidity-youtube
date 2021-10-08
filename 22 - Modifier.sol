pragma solidity ^0.5.11;

//com modifiers podemos executar pedaços de codigo antes das funcoes, como verificações

//1 Sintaxe
//2 Passando argumentos
//3 Encadeamento de modificadores
//4 Exmplo: controle de acesso.

contract MyContract {
    function foo(uint _a) external meuModificador(_a) { //encaminhamos o valor de _a recebido pela funcao para o modificador
        //
    }
    
    modifier meuModificador(uint a) { //internal por padrao
        require(a==10, "mensagem de erro");
        _; //place holder que representa a funcao
        //ira executar o codigo da funcao na qual esse modificador esta. Nesse caso, somente se passar pelo require anterior.
    }
    
    
    address admin;
    function saqueEth() external onlyAdmin() {
        //
    }
    
    modifier onlyAdmin(){
        require(msg.sender ==admin);
        _;
    }
}

contract ModificadoresCombinados {
    function bar(uint _a) external modificador1(_a) modificador2(_a){
        //
    }
    
    modifier modificador1(uint a){
        require(a ==10);
        _; //place holder agora aponta para o modificador 2 e o place holder do modificador 2 aponta para o corpo da funcao
    }
    
    modifier modificador2(uint a){
        require(a ==10);
        _;
    }
}

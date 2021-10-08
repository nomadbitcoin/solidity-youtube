pragma solidity ^0.5.11;

//1. declarando constructor
//2. deferença entre funcoes refulares
//3. padrao administrador
//4. chamando outras funcoes
//5. chamando parent constructors

//2. 
//Construtores sao executados uma unica vez quando o contrato eh implementado
//so ha dois tipos de visualizacoes: public e internal
//nao conseguirmos chamar o constructor dentro de outras funcoes mas podemos chamar funcoes dentro do constructor


contract MyContract {
    uint a;

    //3 - usado para que somente o criador/admin do contrato possa fazer modificacoes
    address admin;
    
    //1. 
    constructor(uint _a) public {
        a = _a; //inicializacao de variaveis
        admin = msg.sender;
        foo();
    }
    
    //4.
    function foo() public {
        a = 2;
    }
}

//5.

contract ContratoPai {
    constructor (uint a) public {
        //faz alguma coisa
    }
}

contract ContratoFilho is ContratoPai {
    constructor(uint _a) ContratoPai(_a) public {
        //essa sintaxe de instrucoes fara o seguinte:
        //quando fizer deploy do contrato filho com o argumento _a ele sera passado para o construtor do contrato Pai.
    }
}





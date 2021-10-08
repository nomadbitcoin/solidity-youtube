pragma solidity ^0.5.11;

//1. O que acontece quando temos erros em smart contracts
//2. throw
//3. revert()
//4. require()
//5. assert()
//6. erros em outros contratos

contract MyContract{
    uint a;
    
    function foo() external {
        a = 10;
        //
        //   
        //Error
        //Tudo eh revertido e nao passa pra frente
        
        //FORMAS DE EVITAR ERROS:
        if(a==10){
            revert("Aqui explica o porque reverteu, mensagem de erro");
        }
        
        //outro jeito melhor de fazer isso
        require(a != 10, 'mensagem de erro aqui');
        //verificar condicoes indesejaveis (entradas incorretas do usuario por ex)
        //o codigo ira parar e consome o gas restante para retornar o erro para ser depurado.
        
        //ou usando assert
        assert(a != 10);
        //assert serve para erros que nunca devem acontecer 
        //ira "parar" e reembolsa o gas restante
    }
    
    function vaiQuebrarRevert() external {
        revert("transacao quebrou, revertida");
    }

    function vaiQuebrarRequire() external {
        require(true==false, "transacao quebrou, revertida");
    }

    function vaiQuebrarassert() external {
        assert(true==false);
    }
    
    function vaiQuebrarEmOutroContrato() external {
        B b = new B(); 
        // b.bar();
        
        address(b).call((abi.encodePacked("bar(")));
    }
}


contract B {
    function bar() external {
        revert("erro em transacao nesse contrato");
    }
}

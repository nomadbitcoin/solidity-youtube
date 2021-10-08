pragma solidity ^0.5.11;

//arrays representam uma colecao de dados
// em solidity so eh possivel ter arrays do mesmo tipo de dado
//arrays podem ter tamanho definido ou "ilimitado"

//CRUD: 

contract MyContract {
    //1 Storage arrays - guardados na memoria da blockchain
    uint[] minhalista;
    bool[20] minhalistabool; //push nao funcionara
    
    function foo() external {
        minhalista.push(2); //adicionando dados
        minhalista.push(3);
        minhalistabool[0] = false;
        
        minhalista[0]; //lendo dados
        minhalista[0] = 20; //atualizando dados do array
        delete minhalista[0]; //deletando dados do array (apaga apenas o dado, ainda deixa a posicao dessa lista ativa, [0] ainda eh acessivel como false)
        
        
        //interagindo com os itens de um array usando loop
        for(uint i=0; i<minhalista.length; i++){
            minhalista[i];
        }
        
    }
    
    //2 Memory array - so existem temporariamente enquanto executamos uma funcao e depois os dados somem.
    //devem ser declarados com um tamanho definido
    function bar() external {
        uint[] memory novalista = new uint[](10);
        
        //para adicionar, atualizar ou remover eh igual outro
        
    }
    
    //3 passar arrays para funcao e retornar arrays de funcoes.
    function fooBar(uint[] memory argumentos) public returns(uint[] memory){
        
    }
    
}
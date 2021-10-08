pragma solidity ^0.5.11;
// Define a versão da linguagem solidity que sera usada no smart contract. (qualquer versao dentro da 0.5.x)

contract MyContract{
    
}

contract MySecondContract{
    uint a;
    uint b;
    
    function add() external{
        return a + b;
    }
}
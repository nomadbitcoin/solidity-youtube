pragma solidity ^0.5.11;
// Define a versão da linguagem solidity que sera usada no smart contract. (qualquer versao dentro da 0.5.x)

contract MyContract{
    uint value;
    
    //external eh um modificador de visualizacao e vamos falar mais sobre isso depois
    //view indica que nao essa funcao nao altera dados ou o estado da blockchain, somente visualiza dados (read only)
    //returns indica qual o tipo do dado que sera retornado pela funcao
    function getValue() external view returns(uint){
        return value;
    }
    
    //fucoes sem parametro view sao funcoes que alteram dados...
    function setValue(uint _value) external {
        value = _value;
    }
}
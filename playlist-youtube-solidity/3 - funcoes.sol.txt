pragma solidity ^0.8.0;

//parametros
//visibilidade
//estado
//payable
//return

contract funcoes{
    function soma(uint _a, uint _b) external pure returns(uint){
        return _a + _b;
    }
    
    string nome ="Yan";
    
    function qualNome() external view returns(string memory){
        return nome;
    }
    
    
    mapping(address => uint) saldos;
    
    function investir() public payable returns(uint){
        saldos[msg.sender]+= msg.value;
        return saldos[msg.sender];
    }
}
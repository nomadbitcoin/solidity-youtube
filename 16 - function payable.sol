pragma solidity ^0.5.11;

//enviando eth de um endereço wallet para um smartcontract


//obs: Somente funcoes sem view mode
//algumas unidades de wei sao: wei, szabo finney e ether

contract MyContract {
    mapping(address => uint) balances;
    
    function invest() external payable {
        //se enviarem menos de 1000 wei a transacao sera revertida e nao aceita
        if (msg.value < 1000){
            revert();
        }
        balances[msg.sender] += msg.value;
    }
    
    //funcao para verificar se recebeu o dinheiro
    function balanceOf() external view returns(uint){
        return address(this).balance;
        //this -> faz referencia a esse smart contract
        //ira retornar o saldo desse smart contract
    }
}
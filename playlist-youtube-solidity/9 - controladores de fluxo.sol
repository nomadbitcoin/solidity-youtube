pragma solidity ^0.8.0;

//Verifica se endereco esta em uma lista.

contract controladores {
    address[] depositos;
    
    function salvaEnderecos(address _endereco) external {
        depositos.push(_endereco);
    }
    
    function veririficEndereco(address _endereco) external view returns(bool){
        for(uint i; i<depositos.length; i++){
            if (depositos[i] == _endereco) {
                return true;
            }
        }
        return false;
    }
}
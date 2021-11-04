pragma solidity ^0.8.0;

//internal
//private
//public

contract visibilidade {
    string private nome;
    
    function setNome(string memory _nome) external {
        nome = _nome;
    }
    
    function getName() public view returns(string memory){
        return nome;
    }
}

contract outro is visibilidade {
    function hoo() external view returns(string memory){
        return getName();
    }
}
pragma solidity ^0.8.0;

//Create
//Read
//Update
//Delete

//Arrays de Arrays

contract listas {
    string[] nomes;
    string[][] nomes2;
    
    function salvaNomes(string memory _nome) external {
        nomes.push(_nome);
    }
    
    function lerNome(uint _position) external view returns(string memory){
        return nomes[_position];
    }
    
    function atualizaNome(uint _position, string memory _newName) external {
        nomes[_position] = _newName;
    }
    
    function deletaNome(uint _position) external {
        delete nomes[_position];
    }
}


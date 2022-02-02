pragma solidity ^0.8.0;

//external
//internal
//public
//private

contract visibilidade{
    string meunome = "Yan";
    
    function qualNome() public view returns(string memory){
        return meunome;
    }
    
    function qualNome1() external view returns(string memory){
        return meunome;
    }
    
    function qualNome2() internal view returns(string memory){
        return meunome;
    }
    
    function qualNome3() private view returns(string memory){
        return meunome;
    }
}

contract B is visibilidade{
    function haa() external view returns(string memory){
        return qualNome2();
    }
}
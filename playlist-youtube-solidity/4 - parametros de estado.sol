pragma solidity ^0.8.0;

//padrao
//view
//pure

contract parametros {
    uint numero =10;
    
    function qualNumero() external returns(uint){
        return numero;
    }
    
    function qualNumeroView() external view returns(uint){
        return numero;
    }
    
    function calcula(uint a, uint b) external pure returns(uint){
        return a+b;
    }
}

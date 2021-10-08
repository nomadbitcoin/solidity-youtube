pragma solidity ^0.5.11;

contract MyContract{
    uint value;
    
    function _getValue() internal view returns(uint){ //convencao usar _ para funcoes internas
        return value;
    }
    
    function setValue(uint _value) external{
        value = _value;
    }
    
    function getValue() external view returns(uint){
        return value;
    }
}
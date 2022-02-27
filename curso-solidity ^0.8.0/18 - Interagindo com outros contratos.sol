pragma solidity ^0.8.0;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/IERC20.sol";
import "./IERC20Mine.sol";

contract A {
    address _contract;
    IERC20 myInstance;

    constructor(IERC20 contracto){
        myInstance = contracto;
    }

    function getSaldo(address _contrato) external view returns(uint256){
        return IERC20Mine(_contrato).balanceOf(msg.sender);
    }

    function getSaldo() external view returns(uint256){
        return myInstance.balanceOf(msg.sender);
    }

    function supply() external view returns(uint256){
        return myInstance.totalSupply();
    }

    function setAddres(address newAddress) external {
        _contract = newAddress;
    }
}
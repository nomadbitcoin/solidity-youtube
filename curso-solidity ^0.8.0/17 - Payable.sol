pragma solidity ^0.8.0;

contract Pagaveis {
    function deposit() external payable returns(bool){ 
        require(msg.value >= 1 ether, "Nao aceito");
        return true;
    }

    function balance() external view returns(uint256){
        return address(this).balance;
    }

    function withdrawSend(uint256 _amount) external returns(bool){
        if (payable(msg.sender).send(_amount)){
            return true;
        } else {
            return false;
        }
    }

    function withdrawTransfer(uint _amount, address payable _endereco) external {
        _endereco.transfer(_amount);
    }
}
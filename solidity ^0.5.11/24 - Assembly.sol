pragma solidity ^0.5.11;

//serve para manipulacoes em baixo nivel
//lista de todos

//eh um recurso avançado e deve ser evitado se possivel
//unica forma de verificar o tipo de um endereco

contract MyContract {
    string result;
    
    function verificaEndereco() external returns(string memory){
        //verificando se um endereco eh de wallet ou de smart contract
        //cada tipo de endereco tem campos diferentes associados e um deles eh o codefield
        //se codefield for vazio ou zero eh uma wallet
        //se for maior do que zero entao eh o endereco de um smart contract
        address endereco = msg.sender;
        uint size;
        
        assembly {
            size := extcodesize(endereco)
        }
        if(size>0){
            result= "Eh endereco de smart contract";
        }else{
            result="Eh endereco de wallet";
        }
    }
    
    function getResult() external view returns(string memory){
        return(result);
    }
}

contract B {
    MyContract outro = new MyContract();
    
    function chamaOutroContrato() external {
        outro.verificaEndereco();
    }
    
    function getCaller() external view returns(string memory){
        return outro.getResult();
    }
}

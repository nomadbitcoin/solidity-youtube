pragma solidity ^0.8.0;


contract meuContrato {
    uint minhaidade =24;
    
    string nome = "Yan";
    address carteira = msg.sender;
    bool estaAtivo = false;
    
    bytes data;
    
    uint[] saldos;
    
    string[] clientes;
    address[] carteriras;
    
   mapping(address => uint) saldoss;
   
   struct Usuario{
       uint id;
       string name;
       address endereco_carteira;
   }
   
   enum Cores {
       VERMELHO,
       PRETO,
       VERDE
   }
   
   
   function usandoVariaveis() external {
       saldos.push(1);
       estaAtivo = true;
       
       saldoss[msg.sender] = 10;
      
       string memory algumacor;
   }
}
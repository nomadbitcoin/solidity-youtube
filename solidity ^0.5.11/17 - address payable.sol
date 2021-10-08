pragma solidity ^0.5.11;

//1. transfer
//2. address vs address payable
//3. address payable casting (address and uint160) typecasting
//4. msg.sender
//5. send vs transfer

contract MyContract {
    address payable[] enderecosquerecebem; //array de enderecos que podem receber eth
    
    //1 e 2. transfer and diferencas entre enderecos
    //payable como parametro significa que esse smart contract ENVIA eth para um endereco
    //payable como modifier significa que esse smartr contract RECEBE eth de fora dele
    
    function sendEth(address payable quemrecebe) external {
        quemrecebe.transfer(1 ether);
        //transfere 1 ether desse smsart contract para o endereco
    
        
        //3. typecasting
        //endereco pagavel para endereco normal
        
        
        address a;
        a = quemrecebe;
        a.transfer(100);
        //ira dar um erro porque a variavel que ira receber o endereco precisa receber o parametro payable tambem
     
     //4.
     //msg.sender eh um endereco pagavel por padrao
        msg.sender.transfer(100);
        
    //5;
    quemrecebe.send(100);
    
    //a diferenca entre send e transfer eh que
    //se enviamos eth para outro smart contract usando o send e a transacao falhar, esse smart consmart
    //ira retornar false, se for bem sucedida ira retornar true
    
    //se enviarmos usando transfer e a transacao falhar esse smart contract recebedor ira devolver um erro
    //esse erro ira se propagar no contrato que enviou e todas as transacoes podem ser canceladas
    }
}
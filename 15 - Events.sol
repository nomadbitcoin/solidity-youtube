pragma solidity ^0.5.11;

// Eventos sao usados para se comunicar com "o mundo real" fora das blockchains
// Eh a forma como enviamos eventos para o Front End de um aplicativo ou Site

// 1 - Um evento nao pode ser acessado pelo proprio contrato, somente fora dele
//eh somente um via: da blockchain para fora dela.
// 2 - Eventos custam menos gas que armazenar uma variavel.

// 3- Usando web3.js outros sistemas estarao escutando os eventos desse contrato.

contract MyContract {
    //primeiro precisamos declarar o evento
    event NewTrade(
        // O parametro indexed ajuda a filtrar eventos no front end.
        uint indexed date,
        address indexed from,
        address indexed to,
        uint amount
    );
    
    //depois emitimos
    function foo(address _to, uint _amount) external {
        emit NewTrade(now, msg.sender, _to, _amount);
    }
}
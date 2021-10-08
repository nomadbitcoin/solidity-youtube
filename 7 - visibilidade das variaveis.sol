pragma solidity ^0.5.11;

contract MuContract {
    uint private a=1; //private somente pode ser acessado dentro desse smart contract
    uint internal b=2; //pode ser acessada somente dentro desse smart contract ou outro que Herde esse contrato(nao consegue ler de fora).
    uint public c=3; //pode ser lida de fora e de qualquer lugar
  
}

//o que o compilador faz eh declarar uma funcao de igual nome da variavel com a funcao return, por isso nao conseguimos criar uma funcao
//com o mesmo nome
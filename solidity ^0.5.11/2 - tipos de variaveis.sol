pragma solidity ^0.5.11;
// Define a versão da linguagem solidity que sera usada no smart contract. (qualquer versao dentro da 0.5.x)

contract MyContract{
    //1 - tamanhos definidos
    bool isReady; //True or False
    uint a; // so numeros positivos: 1,2,3...
    address recpipient;
    bytes32 data; //muito usado para strings que nao podem passar de 32bytes
    
    //2 - tamanhos-de-variaveis definidos
    string name; //texto de qualquer tamanho
    bytes _data; //tambem usado para definir texto ou numero de qualquer tamanho
    uint[] amounts; //arrays que so podem ser do mesmo tipo de dado.
    mapping (uint => string) users; //como dicionarios de chaves e valores, define o tipo da chave e o tipo do valor e entao o nome desse "dict"
    
    //3 - user-defined data
    struct User {
        uint id;
        string name;
        uint[] frindIds;
    } //eh como um objeto em javascript mas voce precisa defini-lo e instancialo-lo em algum lugar, seja dentro de um dicionario ou em um array
    
    enum Color {
        RED,
        GREEN,
        BLUE
    } //eh bom para definir opcoes, exemplos:
    Color.RED, Color.
    
}


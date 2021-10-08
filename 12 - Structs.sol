pragma solidity ^0.5.11;

//sao como classes ou objetos
//muito uteis para criar uma estrutura template definida de funcoes e variaveis

contract Estruturas{
    //1. Declarar Estruturas
    //2. CRUD
    //3. Array de Structs
    //4 Mapping de Structs
    
    //1 Declarar Estruturas
    struct Usuario{
        address endereco_wallet;
        uint score;
        string nome;
    }
    
    //2 Criando estrutura e inserindo dados
    function foo(string calldata _name) external{
        //instanciando a estrutura
        Usuario memory usuario1 = Usuario(msg.sender, 0, _name);
        Usuario memory usuario2 = Usuario(msg.sender, 0, _name);
        Usuario memory usuario3 = Usuario({nome: _name, score:0, endereco_wallet: msg.sender});
    
        //Lendo dados de uma estrutura
        usuario3.endereco_wallet;
        //atualizando dados
        usuario3.score = 20;
        //deletando dados
        delete usuario3;
    }
    

    //3 Criando um Array
    Usuario[] users;
    function foo1(string calldata _name) external{
        //instanciando a estrutura
        Usuario memory usuario4 = Usuario(msg.sender, 0, _name);
        
        users.push(usuario4); //adicionado usuario criado na lista de Estruturas
        users.push(Usuario(msg.sender, 0, _name)); //adicionando diretamente
    }
    
    //4 Mapping de Structs
    mapping(address => Usuario) listaDeUsuarios;
    function foo2(string calldata _name) external{
        //instanciando a estrutura
        Usuario memory usuario5 = Usuario(msg.sender, 0, _name);
        
        listaDeUsuarios[msg.sender] = usuario5; //adicionado usuario criado na lista de Estruturas
        listaDeUsuarios[msg.sender] = Usuario(msg.sender, 0, _name); //adicionando diretamente

    }
    
}
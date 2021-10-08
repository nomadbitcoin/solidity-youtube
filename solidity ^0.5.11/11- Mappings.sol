pragma solidity ^0.5.11;

contract Dicionarios {
    //voce tem chaves e Valores, a vantagem eh que voce acessa um dado muito mais facil mas nao consegue iterar na lista toda
    
    //1. Declarar Mappins (dicionaios)
    //2. CRUD
    //3. Valores padrao (default values)
    //4. Dicionarios exoticos (Exotic mapping) 1: Nedted Mappings
    //5. Dicionarios exoticos (Exotic mapping) 2: array inside mapping
    

    //1. Declarar Mappins (dicionaios)
    mapping(address => uint) balances; //address = chave, uint= tipo do valor, balances = nome do dicionario.
    
    function foo(spender) external {
        //2. Adicionar dados
        balances[msg.sender] = 100;
        //2. Ler dados
        balances[msg.sender];
        //3 Atualizar dados
        balances[msg.sender] = 200;
        //4 deletar dados
        delete balances[msg.sender];
    }
    
    //3. Default values
    //balances[algumEnderecoQueNaoExiste] => 0; ja que o valor padrao de uint eh 0.
    
    
    //4.1 Exotic mapping
    mapping(address => mapping(address => bool)) approved; //dicionario dentro de dicionario
    //Adicionar dados
    approved[msg.sender][spender] = true;
    //Ler dados
    approved[msg.sender][spender];
    //atualizar dados
    approved[msg.sender][spender] = false;
    //deletar dados
    delete approved[msg.sender][spender];
    
    //5 2.Exotic mapping - array inside mapping
    mapping(address => uint[]) scores;
    
    //adicionando dados
    scores[msg.sender].push(1);
    scores[msg.sender].push(2);
    //lendo dados
    scores[msg.sender][1];
    //atualizando dados
    scores[msg.sender][1] = 3; 
    //deletando dados
    delete scores[msg.sender][1];
    
}
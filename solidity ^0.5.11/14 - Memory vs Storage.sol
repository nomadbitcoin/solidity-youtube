pragma solidity ^0.5.11;

contract MyContract{
    //1. storage
    //2. memory
    //3. stack
    //4. calldata
    
    //1 - guardando dados na blockchain (persistente)
    uint a; //toda variavel declarada fora de funcoes eh guardada na blockchain
    
    
    // para guardar dados aninhados (array inside arrays) precisamos definir ponteiros storage
    struct User{
        string name;
    }
    User[] users;
    
    function foo() external {
        users[0].name; //para manipular dados desse array do jeito "normal".
        
        //quando o numero de arrays dentro de arrays for muito grande ficara dificil a leitura e manipulacao e para isso criamos ponteiros
        User storage user = users[0]; //definimos o tipo do ponteiro, onde ele esta e seu nome; e entao qual eh o array que iremos manipular
        
        //agora podemos manipular um array sem ficar especificando em posicao de lista...
        user.name = "qualquer nome";
    }
    
    //2. memory - guardando dados localmente
    function foo1() external {
        User memory user = users[0];
        
        bar(user); //passamos um dado que esta em memoria para funcao que recebe esse dado tambem em memoria
    }
    
    function bar(User memory user) internal {
        //ira receber dados "em memoria local"
    }
    
    //3. stack - eh todos tipos de variavies declarados dentro de uma funcao
    function foo2() external {
        uint b; //eh como em memoria, sera perdido assim que a funcao for executada
        
        //quando definimos muitas variaveis dentro de uma funcao podemos receber o erro "stack memory exceed".
    }
    
    //4. calldata - para dados externos
    //toda funcao executada externamente eh uma transacao, por isso arugmentos como "memory" nao vai funcionar
    function foo3(uint[] calldata _users) external {
        
    }
}

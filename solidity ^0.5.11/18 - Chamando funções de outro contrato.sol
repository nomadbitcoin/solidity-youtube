pragma solidity ^0.5.11;

//1. Chamando funcoes de outro smart contract
//2. import keyword
//3. Contract interface
//4. error propagation - Todo erro que acontece em outro contrato sera propagado no contrato que o chama.

//import 'ContractB.sol';

contract A {
    //Para chamar funcoes de outro contrato nos precisamos da interface delete e e endereço. (Quando ja esta no mesmo arquivo precisamos somente instancia-lo (que eh nosso caso aqui))
    //Fazemos deploy to primeiro contrato para ter seu endereco para entao podermos usa-lo
    
    address contratoB;
    function setEndereco(address _contratoB) external {
        contratoB = _contratoB;
    }
    
    //Criamos uma funcao para chamar a funcao do outro contrato
    function chamarFuncaoContratoB() external view returns(string memory){
        //para instancia-lo usamos um ponteiro (B = tipo, b = nome do ponteiro, B(endereco) interface e endereco.
        B b = B(contratoB);
        return b.helloWorld();
    }
}

contract B{
    function helloWorld() external pure returns(string memory){
        return "helloWorld";
    }
}

//3. Interfaces são como abstracoes do contrato e servem para interagir com padroes
//nao precisamos importar um contrato inteiro e todas as suas funcoes
// podemos usar somente "assinaturas" dessas funcoes ou ainda somente assinaturas das funcoes que vamos usar
//por exemplo, vamos gerar uma interface do contrato A para ser importada em outro contrato

// interface interfaceA {...}  uma interface nao pode herdar outras interfaces ou contratos, precisam ser puras. Nao podem implementar enums, estruturas e construtores.
// declarar interfaces usando "contract" e criando funcoes declarativas nos da mais liberdade.

contract interfaceA {
    function setEndereco(address _contratoB) external;
    function chamarFuncaoContratoB() external view returns(string memory);
}

contract AA is interfaceA{
    //Temos que declarar as funcoes de acordo com a interfaceA
    
    //Isso eh util pora interagir com contratos ja implementados como Routers das DEXs e outros.
}


//ALGUMAS OBSERVACOES SOBRE INTERFACES
//A interface não pode ter nenhuma função com implementação.
///As funções de uma interface podem ser apenas do tipo externo.
//A interface não pode ter construtor.
//A interface não pode ter variáveis de estado.
//A interface pode ter enum, structs que podem ser acessados usando a notação de ponto do nome da interface.

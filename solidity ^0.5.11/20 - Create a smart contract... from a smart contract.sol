pragma solidity ^0.5.11;

//Utilizado para separar responsabilidades de um contrato pois caso haja uma vulnerabilidade nao ira afetar todos os contratos

//1. Criando contratos filhos
//2. Guardando endereco de contratos filhos
//3. Cast contract pointer to address
//4. Chamando funcoes de um contrato filho
//5. Alertas quando o administrador de um contrato eh outro contrato.

//Vamos usar como exemplo um contrato de emprestimo e um contrato que faz o emprestimo

contract FabricadeEmprestimos {
    Emprestimo[] loans; //Criamos uma lista de ponteiros para guardar o endereco de cada contrato que sera criado
    address[] enderecos;
    
    function criaEmprestimo(uint _total) external {
        //vamos criar um ponteiro para cada contrato de emprestimo que sera Criando
        Emprestimo loan = new Emprestimo(_total);
        //precisamos salvar o endereco desse contrato gerado
        loans.push(loan);
        
        
        //nesse caso estamos armazenando um ponteiro completo e se nao quiser interatir com os contratos de Emprestimos à partir desse contrato
        //podemos armazenar somente seu endereco da seguinte forma>:
        enderecos.push(address(loan));
    }
    
    //para vermos os enderecos. (em um caso real somente o admin deve poder fazer isso)
    function getEnderecos(uint _position) public view returns(address){
        return enderecos[_position];
    }
}

//Tera um contrato de emprestimo para cada emprestimo ao invez de um controlando todos
contract Emprestimo {
    uint public amount;
    
    constructor(uint _amount) public {
        amount = _amount;
    }
}


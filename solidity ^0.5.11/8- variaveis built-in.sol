pragma solidity ^0.5.11;

// com essas variaveis podemos pegar dados de ambiente, tais como enderecos de quem chamou o contrato ou quanto eth foi enviado para o contrato


contract MyContract {
    //tx
    tx.origin -> quem enviou a transacao
    
    //msg
    msg.value -> quanto foi enviado para o contrato em wei (unidades muito pequenas de eth que sao usadas para computacao) 1wei - 10^ (-18) ether
    msg.sender -> quem enviou a transacao
    
    
    //DIFERENÇA ENTRE tx.origin e msg.sender:
    Alice => Smart Contract A           => Smart Contract B                     => Smart Contract C
            tx.origin = Alice               tx.origin = Alice                   tx.origin = Alice
            msg.sender = Alice              msg.sender = Smart Contract A       msg.sender = Smart Contract B
            

    //block
    block.timestamp -> horario em que o bloco foi minerado, em formato timestamp
    
    https://docs.soliditylang.org/en/latest/units-and-global-variables.html?highlight=block#block-and-transaction-properties
}
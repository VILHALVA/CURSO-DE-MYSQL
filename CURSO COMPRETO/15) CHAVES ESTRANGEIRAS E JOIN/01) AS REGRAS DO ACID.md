# 01) AS REGRAS DO ACID
O ACID é um acrônimo que representa as propriedades essenciais de transações em um sistema de gerenciamento de banco de dados. Essas propriedades garantem a consistência e a integridade dos dados, mesmo em cenários de falha ou concorrência. O ACID é um conceito fundamental em sistemas de bancos de dados, especialmente em ambientes em que a confiabilidade dos dados é crítica. Vamos entender o que cada letra do acrônimo representa:

1. Atomicidade (Atomicity):
   A atomicidade garante que uma transação é tratada como uma unidade indivisível de trabalho. Isso significa que uma transação é executada na íntegra ou não é executada de forma alguma. Se qualquer parte da transação falhar, todas as mudanças feitas até aquele ponto são desfeitas (rollback). Se a transação for bem-sucedida, todas as mudanças são confirmadas (commit).

2. Consistência (Consistency):
   A consistência garante que uma transação leva o banco de dados de um estado válido para outro estado válido. Isso significa que todas as regras e restrições definidas no banco de dados devem ser respeitadas antes e após a execução da transação. Se uma transação violar alguma regra ou restrição, ela será revertida para manter a consistência dos dados.

3. Isolamento (Isolation):
   O isolamento garante que uma transação em execução seja isolada das outras transações concorrentes. Isso significa que o resultado de uma transação não é visível para outras transações até que a transação seja confirmada (commit). Isso evita que diferentes transações interfiram umas nas outras e evita problemas de concorrência, como leitura suja, leitura não repetível e escrita fantasmas.

4. Durabilidade (Durability):
   A durabilidade garante que, uma vez que uma transação seja confirmada (commit), seus resultados são permanentes e persistirão no banco de dados, mesmo em caso de falha do sistema. Isso significa que as alterações feitas pelas transações confirmadas são armazenadas de forma segura e não podem ser desfeitas por falhas subsequentes, garantindo a confiabilidade dos dados.

O ACID é um conjunto importante de propriedades que permite que os sistemas de bancos de dados mantenham a integridade e a consistência dos dados, mesmo em situações complexas. Garante que as transações sejam confiáveis e que os dados do banco de dados permaneçam precisos e consistentes em todas as operações. Essas propriedades são essenciais para a confiabilidade e a robustez de sistemas de bancos de dados em ambientes de produção críticos.
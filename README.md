# Observações do script SQL

Foram criados eventos para expirar pedidos de recuperação de senha,
para que eles possam rodar é necessário ativar o scheduler 
que por padrão é desativado, inclusive quando o servidor é reiniciado.

```
SET GLOBAL event_scheduler = ON;
SHOW PROCESSLIST;
```

**SHOW PROCESSLIST** mostra os processos ativos;

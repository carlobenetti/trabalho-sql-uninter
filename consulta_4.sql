-- -------------------------------------------------------------------------
-- Implemente uma consulta para listar o nome dos clientes que possuem 
-- pagamento “pendente”, bem como o valor devido por eles. A listagem deve 
-- ser mostrada em ordem alfabética crescente pelo nome dos clientes. 
-- Dica: Utilize a cláusula group by.
-- -------------------------------------------------------------------------

SELECT 
  C.Nome,
  SUM(P.valorTotal) AS valor_pendente
FROM Cliente C
JOIN Locacao L ON C.idCliente = L.Cliente_idCliente
JOIN Pagamento P ON L.Pagamento_idPagamento = P.idPagamento
WHERE P.estado = 'Pendente'
GROUP BY C.idCliente, C.Nome
ORDER BY C.Nome ASC;

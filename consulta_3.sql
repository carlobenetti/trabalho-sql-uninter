-- --------------------------------------------------------------------------
-- Implemente uma consulta para listar o modelo e a marca dos veículos, 
-- bem como o número de vezes que cada um foi locado. 
-- A listagem deve ser mostrada em ordem decrescente pelo número de aluguéis. 
-- Dica: Utilize a cláusula group by.
-- --------------------------------------------------------------------------


SELECT 
  V.modelo,
  V.marca,
  COUNT(*) AS total_locacoes
FROM LocacaoVeiculo LV
JOIN Veiculo V ON LV.Veiculo_idVeiculo = V.idVeiculo
GROUP BY V.idVeiculo, V.modelo, V.marca
ORDER BY total_locacoes DESC;




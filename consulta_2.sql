-- ---------------------------------------------------------------------------
-- Implemente uma consulta para listar o valor total arrecadado pela locadora. 
-- Lembre-se que pagamentos “pendentes” não fazem parte da soma.
-- ---------------------------------------------------------------------------



SELECT 
  SUM(valorTotal) AS total_arrecadado
FROM Pagamento
WHERE estado = 'Pago';

INSERT INTO Cliente (Nome, Endereco, Identificacao) VALUES ('Lua Blat', 'Endereco 1', 'PF');
INSERT INTO Cliente (Nome, Endereco, Identificacao) VALUES ('Carlos Vasconcelos', 'Endereco 2', 'PF');
INSERT INTO Cliente (Nome, Endereco, Identificacao) VALUES ('BF Atacado', 'Endereco 3', 'PJ');

INSERT INTO Produto (Categoria, Descricao, Valor) VALUES ('Papelaria', 'Livro', 60.00);
INSERT INTO Produto (Categoria, Descricao, Valor) VALUES ('Eletronico', 'Pen-drive', 40.00);
INSERT INTO Produto (Categoria, Descricao, Valor) VALUES ('Eletronico', 'Impressora', 2000.00);

INSERT INTO Pedido (StatusPedido, Descricao, Frete) VALUES ('Solicitado', 'Descricao1', 30.00);
INSERT INTO Pedido (StatusPedido, Descricao, Frete) VALUES ('Em Andamento', 'Descricao2', 16.00); 
INSERT INTO Pedido (StatusPedido, Descricao, Frete) VALUES ('Concluido', 'Descricao3', 11.00); 

INSERT INTO Pagamento_Boleto (Data_Vencimento, Valor) VALUES (2022/09/17, 90.00);
INSERT INTO Pagamento_Boleto (Data_Vencimento, Valor) VALUES (2022/09/23, 56.00);
INSERT INTO Pagamento_Boleto (Data_Vencimento, Valor) VALUES (2022/09/30, 2011.00);

INSERT INTO Pagamento_Cartao (Numero_Cartao, CVV_Cartao, Nome, Valor) VALUES ('2948551597318', '256', 'Melissa Barbosa', 100.00); 
INSERT INTO Pagamento_Cartao (Numero_Cartao, CVV_Cartao, Nome, Valor) VALUES ('3959148179654', '547', 'Luara Aguiar', 90.00); 
INSERT INTO Pagamento_Cartao (Numero_Cartao, CVV_Cartao, Nome, Valor) VALUES ('2318945469521', '814', 'BF Atacado', 2100.00); 

INSERT INTO Entrega (Codigo_Rastreio, Status, Data_Entrega) VALUES ('BR20450', 'Entregue', 2022/09/24); 
INSERT INTO Entrega (Codigo_Rastreio, Status, Data_Entrega) VALUES ('BR32088', 'Entregue', 2022/09/30);
INSERT INTO Entrega (Codigo_Rastreio, Status, Data_Entrega) VALUES ('BR46530', 'A caminho', 2022/10/14);

INSERT INTO Estoque (Local) VALUES ('Local A'); 
INSERT INTO Estoque (Local) VALUES ('Local B'); 
INSERT INTO Estoque (Local) VALUES ('Local C'); 

INSERT INTO Fornecedor (CNPJ, Razao_Social) VALUES ('68.544.153/0001-20', 'Papelaria Fornecimento Ltda'); 
INSERT INTO Fornecedor (CNPJ, Razao_Social) VALUES ('39.386.748/0001-70', 'Distribuidores Ltda');  
INSERT INTO Fornecedor (CNPJ, Razao_Social) VALUES ('18.257.330/0001-48', 'Eletronica Ltda'); 

INSERT INTO Terceiro_Vendedor (Local, Razao_Social) VALUES ('Local D', 'Games Play Ltda'); 
INSERT INTO Terceiro_Vendedor (Local, Razao_Social) VALUES ('Local E', 'Companhia W Ltda');  
INSERT INTO Terceiro_Vendedor (Local, Razao_Social) VALUES ('Local F', 'Ball Ben Ltda'); 


-- CRIANDO QUERIES

-- Recuperações simples com SELECT Statement
select * from Produto;

-- Filtros com WHERE Statement
select * from Cliente where Identificacao = 'PF';

-- Crie expressões para gerar atributos derivados
select Descricao, AVG(Frete) from Pedido;

-- Defina ordenações dos dados com ORDER BY
select Descricao, Valor from Produto order by Valor desc;

-- Condições de filtros aos grupos – HAVING Statement
select Descricao, Valor from Produto group by Eletronico having Valor;

-- Crie junções entre tabelas para fornecer uma perspectiva mais complexa dos dados
select *
    from Produto AS p, Pagamento_Boleto AS b
    inner join Valor
    on p.Valor = b.valor
    
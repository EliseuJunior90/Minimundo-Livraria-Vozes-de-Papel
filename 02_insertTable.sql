--Insert--
INSERT INTO autor(nome, nacionalidade)
VALUES
('Jack Maionese', 'França'),
('Ana Goiabada', 'Haiti'),
('Carmen Beterraba', 'Brasil'),
('Roberto Macarrão', 'Japão');

INSERT INTO editora(nome)
VALUES
('Guache'),
('Abril'),
('Inprint'),
('dreamina');

INSERT INTO cliente(nome, cpf, email, telefone)
VALUES
('Paulo Pimenta', '243567798-99', 'ppmenta@gmail.com', '+5511976432960'),
('Maria Maionese', '246893547-33', 'mmmaio@gmail.com', '+5511975432366'),
('Renato Rocambole', '2354789903-77', 'recambole@gmail.com', '+55354689249'),
('Camila Camomila', '390708566-88', 'MomilaCami@gmail.com', '+44486024563');

INSERT INTO venda(data_venda, valor_total)
VALUES
('2025-10-12', '109,33'),
('2025-07-11', '499,21'),
('2024-03-03', '44,50'),
('2021-12-01', '12,19');

INSERT INTO livro(isbn, titulo, preco_venda, estoque_atual, ano_publicacao, id_autor, id_editora)
VALUES
('1543678993547', 'Ponzi, dinheiro e fama','100,34', '23','2013', 3, 1 ),
('1543678993534', 'Manual do sonegador de impostos','190,34', '234','2022', 1, 3),
('1543678995547', 'Tigrinho a droga viralizada','10,90', '263','2015', 4, 2),
('1543678993239', 'Como dizer não','54,80', '55','2014', 2, 4);

INSERT INTO venda_produto (id_venda, id_livro)
VALUES
(3,3),
(2,4),
(4,1),
(1,2);


--mudar preço de venda de todos livros da editora guache
UPDATE livro
SET preco_venda = preco_venda + 5.00
WHERE id_editora = (SELECT id_editora FROM editora WHERE nome = 'Guache');

-- atualizar estoque do livro
UPDATE livro
SET estoque_atual = 100
WHERE titulo = 'Manual do sonegador de impostos';

--corrigir nacionalidade de um autor
UPDATE autor
SET nacionalidade = 'Russia'
WHERE nome = 'Carmen Beterraba'; -- Corrigindo o erro comum: ele é colombiano, não espanhol.


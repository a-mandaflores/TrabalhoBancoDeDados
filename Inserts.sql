INSERT INTO Setor (NomeDoSetor, QuantidadeDeFuncionario) VALUES 
    ('Rh', 5),
    ('Design', 10),
    ('Administração', 8),
    ('Vendas', 6);


INSERT INTO Equipe (NomeDaEquipe, SetorVinculado) VALUES 
    ('EquipeRh', 1),
    ('EquipeDesign', 2),
    ('EquipeAdmin', 3),
    ('EquipeVendas', 4);


INSERT INTO Funcionario (Nome, Telefone, Endereco, Salario, EquipeVinculada) VALUES 
    ('João Silva', '123456789', 'Rua A, 123', 5000.00, 1),
    ('Maria Oliveira', '987654321', 'Rua B, 456', 5500.00, 2),
    ('Carlos Pereira', '111222333', 'Rua C, 789', 4800.00, 3),
    ('Ana Souza', '555666777', 'Rua D, 101', 5200.00, 4);


INSERT INTO TipoDeServico (NomeDoServico, FuncionarioVinculado, Valor, DiasParaEntrega) VALUES 
    ('Design Completo', 2, 1000.00, 5),
    ('Design Redes Sociais', 3, 500.00, 3);


INSERT INTO CadastroCliente (NomeCliente, EnderecoCliente) VALUES 
    ('Empresa A', 'Av. Principal, 789'),
    ('Empresa B', 'Rua Comercial, 456'),
    ('Empresa C', 'Travessa Industrial, 123');


INSERT INTO Orcamento (TipoDeServico, Cliente, MaisInformacoes, Valor, DiaDaCotacao, PrevisaoDeEntrega, Contratado) VALUES 
    (1, 1, 'Mais detalhes sobre o projeto...', 1000.00, '2023-01-15', '2023-01-20', true),
    (2, 2, 'Outras especificações...', 500.00, '2023-02-01', '2023-02-03', false),
    (1, 3, 'Detalhes adicionais...', 1200.00, '2023-03-10', '2023-03-15', true);


INSERT INTO ServicoContratado (Objetivo, PublicoPretendido, Cores, HistoriaEmpresa, FuncionarioVinculado, DataInicio, PrevisaoTermino, DataEntrega) VALUES 
    ('Renovar identidade visual', 'Clientes jovens', 'Azul e Laranja', 'Fundada em 2005...', 2, '2023-01-21', '2023-01-30', '2023-01-28'),
    ('Campanha Redes Sociais', 'Segmento X', 'Vermelho e Branco', 'História interessante...', 3, '2023-02-05', '2023-02-10', '2023-02-08'),
    ('Design de Produto', 'Público diversificado', 'Verde e Amarelo', 'Atuamos desde 1990...', 1, '2023-03-20', '2023-03-25', '2023-03-23');

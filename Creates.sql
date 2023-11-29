CREATE TABLE Equipamento (
    IDEquipamento SERIAL PRIMARY KEY,
    Nome VARCHAR(255),
    Marca VARCHAR(255),
    DetalheDoProduto TEXT,
    NumeroDeSerie VARCHAR(50),
    SetorVinculado VARCHAR(50),
    EquipeVinculada VARCHAR(50)
);


CREATE TABLE Setor (
    IDSetor SERIAL PRIMARY KEY,
    NomeDoSetor VARCHAR(255),
    QuantidadeDeFuncionario INT
);


CREATE TABLE Equipe (
    IDEquipe SERIAL PRIMARY KEY,
    NomeDaEquipe VARCHAR(255),
    SetorVinculado INT REFERENCES Setor(IDSetor)
);


CREATE TABLE Funcionario (
    IDFuncionario SERIAL PRIMARY KEY,
    Nome VARCHAR(255),
    Telefone VARCHAR(15),
    Endereco TEXT,
    Salario DECIMAL(10, 2),
    EquipeVinculada INT REFERENCES Equipe(IDEquipe)
);


CREATE TABLE TipoDeServico (
    IDTipoDeServico SERIAL PRIMARY KEY,
    NomeDoServico VARCHAR(255),
    FuncionarioVinculado INT REFERENCES Funcionario(IDFuncionario),
    Valor DECIMAL(10, 2),
    DiasParaEntrega INT
);


CREATE TABLE CadastroCliente (
    IDCadastroCliente SERIAL PRIMARY KEY,
    NomeCliente VARCHAR(255),
    EnderecoCliente TEXT
);


CREATE TABLE Orcamento (
    IDOrcamento SERIAL PRIMARY KEY,
    TipoDeServico INT REFERENCES TipoDeServico(IDTipoDeServico),
    Cliente INT REFERENCES CadastroCliente(IDCadastroCliente),
    MaisInformacoes TEXT,
    Valor DECIMAL(10, 2),
    DiaDaCotacao DATE,
    PrevisaoDeEntrega DATE,
    Contratado BOOLEAN
);


CREATE TABLE ServicoContratado (
    IDEmpresa SERIAL PRIMARY KEY,
    Objetivo TEXT,
    PublicoPretendido TEXT,
    Cores TEXT,
    HistoriaEmpresa TEXT,
    FuncionarioVinculado INT REFERENCES Funcionario(IDFuncionario),
    DataInicio DATE,
    PrevisaoTermino DATE,
    DataEntrega DATE
);

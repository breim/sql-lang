CREATE TABLE cliente (
	cod_cli NUMBER(5) AUTO_INCREMENT,
	nome VARCHAR(30) NOT NULL,
	CPF NUMBER(11) NOT NULL,
	RG VARCHAR(10) NOT NULL,
	EMAIL VARCHAR(20) NOT NULL,
	DT_NAC DATE,
	CONSTRAINT cli_pk PRIMARY KEY (cod_cli)
);



CREATE TABLE pedido (
	cod_pedido NUMBER(10) NOT NULL,
	cod_cli NUMBER(10) NOT NULL,
	data date NOT NULL,
	CONSTRAINT ped_pk PRIMARY KEY (cod_pedido),
	CONSTRAINT ped_fk FOREIGN KEY (cod_cli) REFERENCES cliente(cod_cli)
);


CREATE TABLE produto (
	cod_produto NUMBER(10) NOT NULL,
	descricao varchar(20) NOT NULL,
	valor number(15,2) NOT NULL,
	constraint prod_pk PRIMARY KEY (cod_produto)
);


CREATE TABLE item_pedido (
	cod_pedido NUMBER(10) NOT NULL,
	cod_produto NUMBER(10) NOT NULL,
	qtd NUMBER(5) NOT NULL,
	CONSTRAINT qtd CHECK (qtd>0)
);

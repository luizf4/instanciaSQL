Utilizando código DDL

create table departamento
(
  codigo number(5) primary key,
  nome_depto varchar2(20)
  
);

create table empregados
(
  codigo number(10) primary KEY,
  nome VARCHAR2(200),
  dt_nasc date,
  funcao VARCHAR2(50),
  cod_depto number(5)
);

alter table empregados
  add CONSTRAINT fk_depto FOREIGN KEY (cod_depto)
  REFERENCES departamento(codigo);
  
  
  select * from empregados
  select * from departamento
  
  insert into departamento values
    (1,'Desenvolvimento');
    
  insert into departamento values
    (2,'Analise');
    
  insert into departamento values
    (3,'Teste');  
  
  INSERT INTO empregados VALUES (1,'Jose da silva', '13/01/1981', 'Programador', 1)
  
  insert into empregados values
    (2,'Maria Joaquina Camargo', '17/03/1989', 'Analista', 2);
    
  INSERT INTO empregados VALUES 
    (3,'Michel alves','29/11/1998', 'Debbuger', 3 )  
    
  select * from empregados emp, departamento dpto
    where emp.cod_depto = dpto.codigo
  
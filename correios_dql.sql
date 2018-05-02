select l.descricao as 'Logradouro', b.nome as 'Bairro', CONCAT( c.nome,'/', e.sigla) as 'Cidade/UF', l.cep as 'CEP' 
	from estados as e inner join cidades as c on e.sigla=c.sigla_uf inner join bairros as b on c.id=cidade_id 
		inner join logradouros as l on b.id=l.bairro_id where l.cep like '%4582%';
		
select l.descricao as 'Logradouro', b.nome as 'Bairro', CONCAT( c.nome,'/', e.sigla) as 'Cidade/UF', l.cep as 'CEP'  
	from estados as e inner join cidades as c on e.sigla=c.sigla_uf inner join bairros as b on c.id=cidade_id 
		inner join logradouros as l on b.id=l.bairro_id where l.descricao like '%Deputado%';
		
select l.descricao as 'Logradouro', b.nome as 'Bairro', CONCAT( c.nome,'/', e.sigla) as 'Cidade/UF', l.cep as 'CEP'  
	from estados as e inner join cidades as c on e.sigla=c.sigla_uf inner join bairros as b on c.id=cidade_id 
		inner join logradouros as l on b.id=l.bairro_id where l.descricao like '%pesquisar_logradouro%' and l.cep like '%pesquisar_cep%';
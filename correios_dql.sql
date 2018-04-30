select l.descricao as 'Logradouro', b.nome as 'Bairro', CONCAT( c.nome,'/', e.sigla) as 'Cidade/UF', l.cep as 'CEP' 
	from estados as e left join cidades as c on e.sigla=c.sigla_uf left join bairros as b on c.id=cidade_id 
		left join logradouros as l on b.id=l.bairro_id where l.cep like '%4582%';
		
select l.descricao as 'Logradouro', b.nome as 'Bairro', CONCAT( c.nome,'/', e.sigla) as 'Cidade/UF', l.cep as 'CEP'  
	from estados as e left join cidades as c on e.sigla=c.sigla_uf left join bairros as b on c.id=cidade_id 
		left join logradouros as l on b.id=l.bairro_id where l.descricao like '%Deputado%';
		
select l.descricao as 'Logradouro', b.nome as 'Bairro', CONCAT( c.nome,'/', e.sigla) as 'Cidade/UF', l.cep as 'CEP'  
	from estados as e left join cidades as c on e.sigla=c.sigla_uf left join bairros as b on c.id=cidade_id 
		left join logradouros as l on b.id=l.bairro_id where l.descricao like '%pesquisar_logradouro%' and l.cep like '%pesquisar_cep%';
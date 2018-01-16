#language: pt
#utf-8

#Exercicio 3 - Desafio!!! Automatizando na prática!
@exe2
Funcionalidade:  CRUD ORANGEHRM
	Eu como usuario do site
	Desejo cadastrar e futuramente alterar os dados dos funcionarios


#1. Logar no site ORANGEHRM (http://opensource.demo.orangehrmlive.com/) e cadastrar um novo empregado (<PIM> >> <Add Employee>)
	@create
	Cenario: cadastrar empregado
	Dado que esteja logado no site ORANGEHRM
	Quando cadastrar o empregado
	Entao deverá ser cadastrado com sucesso


#2. Logar no site ORANGEHRM e editar um empregado existente na Lista de Empregado (<PIM> >> <Employee List>)
	@update
	Cenario: editar dados do empregado
	Dado que esteja na pagina de edicao
	Quando editar os dados do empregado
	Entao deverá ser editado os dados com sucesso	
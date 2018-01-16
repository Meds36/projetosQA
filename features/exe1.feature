#Cenário (BDD) que a partir do site da Inmetrics valide o texto: ”mais de 15 anos de atuação” dentro da página ”Quem Somos”.

#language: pt
#utf-8

@exe1
Funcionalidade:  Buscar frase
	Eu como usuario do site
	Quero procurar o texto mais de 15 anos de atuação
	no link quem somos 

	Cenario: Buscar texto no site
	Dado que esteja na página da inmetrics
	Quando Clicar no link quem somos
	Entao apresentara o texto mais de 15 anos de atuacao
#utf-8


Dado("que esteja na página da inmetrics") do
  visit 'http://www.inmetrics.com.br'
end

Quando("Clicar no link quem somos") do
  has_xpath?('//*[@id="menu-item-2960"]/a/span/span')
end

Entao("apresentara o texto mais de {int} anos de atuacao") do |int|
    has_xpath?('//*[@id="post-2208"]/div/div[1]/div/div/div[1]/div/div/div[1]/div')
  
end


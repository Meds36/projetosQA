

#Do exec 1
Dado("que esteja logado no site ORANGEHRM") do
  visit 'http://opensource.demo.orangehrmlive.com'
end

Quando("cadastrar o empregado") do
  fill_in('txtUsername',:with => 'Admin')
  fill_in('txtPassword',:with => 'admin')
  click_button('btnLogin')
  click_link('PIM')
  click_link('menu_pim_addEmployee')
  fill_in('firstName',:with => 'Marcos')
  fill_in('lastName',:with => 'Teste Orizon')
  click_button ('btnSave')
  
end 

Entao("deverá ser cadastrado com sucesso") do
  has_xpath?('//*[@id="pdMainContainer"]/div[1]/h1')
  #assert_text('personal_txtEmpFirstName', :valuetext => 'Marcos')


end

#Do exec 2
Dado("que esteja na pagina de edicao") do
  visit ('http://opensource.demo.orangehrmlive.com')
  fill_in('txtUsername',:with => 'Admin')
  fill_in('txtPassword',:with => 'admin')
  click_button('btnLogin')
end

Quando("editar os dados do empregado") do
   click_link('PIM')
   click_link('menu_pim_viewEmployeeList')
   fill_in('empsearch_employee_name_empName', :with => 'Marcos')
   click_button('searchBtn')
   click_link('Marcos')
   click_button('Edit')
   fill_in('personal_txtEmpFirstName', :with => 'Xuxa')
   click_button ('btnSave')

end

Entao("deverá ser editado os dados com sucesso") do
     assert_text('Successfully Saved')
end


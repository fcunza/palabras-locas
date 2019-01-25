Given(/^Visitar la pagina inicial$/) do
    visit "/"
end

Then(/^mostrara la palabra "(.*?)"$/) do |palabra|
    last_response.body.should =~ /#{palabra}/m
end

When(/^Ingresa la palabra "(.*?)"$/) do |palabra|
    fill_in("palabra_usuario", :with => palabra)
    click_button("Validar")
end

Then(/^Mostrará mensaje "(.*?)"$/) do |mensaje|
    last_response.body.should =~ /#{mensaje}/m
end
Given(/^Visitar la pagina inicial$/) do
    visit "/"
end

Then(/^mostrara la palabra "(.*?)"$/) do |scrambled_word|
    last_response.body.should =~ /#{scrambled_word}/m
end

When(/^Ingresa la palabra "(.*?)"$/) do |answer|
    fill_in("answer", :with => answer)
    click_button("Validar")
end

Then(/^Mostrará mensaje "(.*?)"$/) do |result_message|
    last_response.body.should =~ /#{result_message}/m
end
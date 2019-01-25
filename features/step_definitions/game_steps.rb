Given(/^Visitar la pagina inicial$/) do
    visit "/"
end

Then(/^mostrara la palabra "(.*?)"$/) do |palabra|
    last_response.body.should =~ /#{palabra}/m
end
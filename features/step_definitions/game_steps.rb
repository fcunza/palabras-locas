Given(/^Visitar la pagina inicial$/) do
    visit "/"
end

When(/^Ingresa la palabra "(.*?)"$/) do |answer|
    fill_in("answer", :with => answer)
    click_button("Validar")
end

Then(/^mostrara el texto "(.*?)"$/) do |text|
    last_response.body.should =~ /#{text}/m
end

When(/^Fallo (\d+) veces$/) do |attempts|

    (attempts.to_i).times do
        fill_in("answer", :with => "angel")
        click_button("Validar")
    end
end

When(/^Elige jugar de nuevo$/) do
    click_link("Jugar de nuevo")
end

When(/^acerto (\d+) veces$/) do |success|
    original_words = ["REFRIGERADOR","LAVADORA","BILLETERA","ESCOBA","LICUADORA"]
    i = 0
	while i < original_words.length
		fill_in("answer", :with => original_words[i])
        click_button("Validar")
        i+=1
  	 end

end



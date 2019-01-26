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
    original_words = ["REFRIGERADOR","LAVADORA","COCINA","LICUADORA","TOSTADORA"]
    i = 0
	while i < original_words.length
		fill_in("answer", :with => original_words[i])
        click_button("Validar")
        i+=1
  	 end

end



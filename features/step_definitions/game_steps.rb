def find_word clue
    words = [
        {"Tan frio como el corazón de tu ex"=>"REFRIGERADOR"},
        {"Da vuelvas y vueltas "=>"LAVADORA"},
        {"Te gusta tenerla gorda"=>"BILLETERA"},
        {"Es largo con pelos"=>"ESCOBA"},
        {"Tiene velocidades"=>"LICUADORA"},
        {"Te chupa la sangre"=>"ZANCUDO"},
        {"Te deja mareado"=>"CERVEZA"},
        {"No puedes vivir sin eso"=>"CELULAR"},
        {"Es hemano de Berlin"=>"PROFESOR"},
        {"Te deja despeinado"=>"VENTILADOR"},
        {"Te entretiene cuando se prende"=>"TELEVISOR"},
        {"Tu mejor aliado"=>"COMPUTADORA"},
        {"Si es muy alto da miedo"=>"EDIFICIO"},
        {"Siempre va pa' lante"=>"ELEFANTE"},
        {"Te abraza hasta la muerte"=>"ANACONDA"},
        {"Es un detective"=>"ORNITORRINCO"},
        {"Te deja con la boca abierta"=>"DENTISTA"}
    ]
    return words[clue]
end

Given(/^Visitar la pagina inicial$/) do
    visit "/"
end

When(/^Ingresa la palabra "(.*?)"$/) do |answer|
    fill_in("answer", :with => answer)
    click_button("Validar")
end

Given(/^La palabra es "(.*?)"$/) do |text|
    @@game.mock_shuffle_words [Word.new(text,"")]
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

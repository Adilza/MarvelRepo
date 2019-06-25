describe 'Teclado', :key do
    
before(:each) do
    visit 'https://training-wheels-protocol.herokuapp.com/key_presses'
end
it 'enviado teclas' do
    
    teclas= %i[tab escape space enter shift control alt]

    teclas.each do |t|
        find('#campo-id').send_keys t
        expect(page).to have_content 'You entered: ' + t.to_s.upcase
        sleep 1
    end
  
end

it 'enviado letras' do
    
    letras= %w[a d i l z a]

    letras.each do |l|
        find('#campo-id').send_keys l
        expect(page).to have_content 'You entered: ' + l.to_s.upcase
        sleep 1
    end
  
end

after(:each) do
    sleep 3
    end
end 
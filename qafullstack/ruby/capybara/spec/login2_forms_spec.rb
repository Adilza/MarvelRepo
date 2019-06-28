
describe 'Login 2', :login2 do
    before(:each) do
        visit 'https://training-wheels-protocol.herokuapp.com/login2'
    end
    it 'com data de nascimento' do 
    
        fill_in 'username', with: 'stark'
        fill_in 'password', with: 'jarvis!'
        login_form= find('#login')
        case login_form.text
            when /Dia/
                find('#day').set '29'
            when /Mês/
                find('#month').set '05'
            when /Dia/
                find('#year').set '1970'
            end
        click_button 'Login'
        expect(find('#flash')).to have_content 'Olá, Tony Stark. Você acessou a área logada!'
    end
  
    after(:each) do
        sleep 3
    end
end
describe 'Dynamic Control', :dc=> true do
    before(:each) do
        visit 'https://training-wheels-protocol.herokuapp.com/dynamic_controls'
    end
    it 'quando habilita o campo' do
        # quando tem a propriedade disabled true o campo esta desabilitado
        # quanto não tem a propriedade disabled o campo esta habilitado
        
        resultado = page.has_field?'movie', disabled: true
        puts resultado
        
        click_button 'Habilita'
        
        resultado = page.has_field?'movie', disabled: false
        puts resultado
    end


end
describe 'Hovers', :hovers=> true do
    before(:each) do
        visit 'https://training-wheels-protocol.herokuapp.com/hovers'
    end
    it 'quando passo o mouse sobre o Blade' do
        card=find(:xpath, '//*[@id="content"]/div/div[1]/img')
        card.hover
        expect(page).to have_content'Nome: Blade'
    end
    it 'quando passo o mouse sobre o pantera negra' do
        card=find('img[alt="Pantera Negra"]')
        card.hover
        expect(page).to have_content'Nome: Pantera Negra'
    end
    it 'quando passo o mouse sobre o pantera negra' do
        card=find('img[alt="Homem Aranha"]')
        # 'img[alt^=Aranha]''
        # 'img[alt*=Aranha]'
        # 'img[alt$=Aranha]'
        card.hover
        expect(page).to have_content'Nome: Homem Aranha'
    end 
end
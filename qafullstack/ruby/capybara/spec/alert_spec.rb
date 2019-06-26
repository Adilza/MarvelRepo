describe 'Alertas', :alert do
    
    before(:each) do
        visit 'https://training-wheels-protocol.herokuapp.com/javascript_alerts'
    end 
    it 'alert' do
        click_button 'Alerta'

        msg = page.driver.browser.switch_to.alert.text
        expect(msg).to eql 'Isto é uma mensagem de alerta'
    
    end
    it 'sim confirma', :confirm do
        
        click_button 'Confirma'
        msg = page.driver.browser.switch_to.alert.text
        expect(msg).to eql 'E ai confirma?'
    
        page.driver.browser.switch_to.alert.accept
        expect(page).to have_content 'Mensagem confirmada'
    end
    it 'não confirma', :confirm do
        
        click_button 'Confirma'
        msg = page.driver.browser.switch_to.alert.text
        expect(msg).to eql 'E ai confirma?'
    
        page.driver.browser.switch_to.alert.dismiss
        expect(page).to have_content 'Mensagem não confirmada'
    end
    it 'prompt', :prompt do
        
        accept_prompt(with: 'Adilza') do
            click_button 'Prompt'
        end
        
        expect(page).to have_content 'Olá, Adilza'
    
    end
    it 'dismiss_prompt', :dismiss do
        
        click_button 'Prompt'
        dismiss_prompt
        
        expect(page).to have_content 'Olá, null'
    
    end
   
    after(:each) do
        sleep 3
        end
    end 
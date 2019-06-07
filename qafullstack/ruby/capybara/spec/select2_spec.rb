describe 'Select',:select do
   
    describe 'single', :single do
        before(:each) do
            visit 'https://training-wheels-protocol.herokuapp.com/apps/select2/single.html'
        end
        it'seleciona ator por nome' do
            find('.select2-selection__arrow').click
            find('.select2-results__option', text: 'Jim Carrey').click
        end
        it 'busca e clica no ator' do
            find('.select2-selection__arrow').click
            find('.select2-selection__choice').set 'Chris Rock'
            find('.select2-results__option').click
        end
    end
    describe 'multiple', :multiple do
        before(:each) do
            visit 'https://training-wheels-protocol.herokuapp.com/apps/select2/multi.html'
        end
        def selecione(ator)
            find('.select2-selection__rendered').click
            find('.select2-search__field').set ator
            find('.select2-results__option').click
        end
        it 'seleciona atores' do
            # selecione('Jim Carrey')
            # selecione('Adam Sandler')   

            # com array 
            atores =['Jim Carrey', 'Adam Sandler', 'Kevin James']
            atores.each do|a|
            selecione(a)
            end
        end
    end

    

end

describe 'Upload', :upload=> true do
    
    before(:each) do
        visit 'https://training-wheels-protocol.herokuapp.com/upload'
        @arquivo= Dir.pwd + '/spec/fixtures/arquivo.txt'
        @imagem= Dir.pwd + '/spec/fixtures/Iamgroot.jpg'
        
    end
    it 'upload com arquivo de texto' do
        attach_file('file-upload', @arquivo)  #metodo pwd retorna o diretório onde o projeto 
        click_button('Upload')
        div_arquivo= find('#uploaded-file')
        expect(div_arquivo.text).to eql 'arquivo.txt'
    end
    it 'upload com arquivo de imagem' do
        attach_file('file-upload', @imagem)  #adicionando um arquivo
        click_button('Upload')
        img= find('#new-image')
        # expect(img[:alt]).to eql 'Upload image'
        expect(img[:src]).to include 'Iamgroot.jpg'

    end

    after(:each) do
        sleep 3
    end
end
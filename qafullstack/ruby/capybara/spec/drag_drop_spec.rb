describe 'Drag and drop', :drop do
    # mover um elemento de uma area dropable para outra dropable
    before(:each) do
        visit 'https://training-wheels-protocol.herokuapp.com/drag_and_drop'
    end
    it 'homem aranha pertence ao team stark' do

        teamStark= find('.team-stark .column')
        teamCap = find('.team-cap .column')
        spiderman= find('img[alt$=Aranha]')
        spiderman.drag_to teamStark

        expect(teamStark).to have_css 'img[alt$=Aranha]'
        expect(teamCap).not_to have_css 'img[alt$=Aranha]'
    end



end

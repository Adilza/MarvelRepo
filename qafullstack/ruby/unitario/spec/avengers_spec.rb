class AvengersHeadQuarter
    attr_accessor :list

    def  initialize
        self.list =[]
    end

    def put(avenger)
        self.list.push(avenger)
    end

end

#TDD (Desenvolvimento guiado por testes)
describe AvengersHeadQuarter do
    it 'deve adicionar um vingador' do
        hq = AvengersHeadQuarter.new
        hq.put('Spiderman')
        expect(hq.list).to eql ['Spiderman']
    end
    it'deve adicionar uma lista de vingadores' do
        hq = AvengersHeadQuarter.new
        hq.put('Thor')
        hq.put('Hulk')
        hq.put('Spiderman')
        # expect(hq.list).to include 'Hilk'
        # verifca se na lista tem o Hulk
        res = hq.list.size > 0
        
        expect(hq.list.size).to be > 0
        expect(res).to be true
    end
    it 'Thor deve ser o primeiro da lista' do
        hq = AvengersHeadQuarter.new
        hq.put('Thor')
        hq.put('Hulk')
        hq.put('Spiderman')
        expect(hq.list).to start_with('Thor')
      
        # verifica se o primeiro da lista é Thor
    end
    it 'Ironman deve ser o último da lista' do
        hq = AvengersHeadQuarter.new
        hq.put('Thor')
        hq.put('Hulk')
        hq.put('Spiderman')
        hq.put('Ironman')
        expect(hq.list).to end_with('Ironman')
        # verifca se o ultimo da lista é o Ironman
    end
    it 'deve conter o sobrenome' do
        avenger = 'Peter Parker'
        expect(avenger).to match(/Parker/)
        # contem Parker
        # expect(avenger).not_to match(/Parker/)
        # não contem 
    end

end
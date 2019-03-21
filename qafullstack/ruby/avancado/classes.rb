class Conta
    attr_accessor :saldo, :nome
    def initialize(nome)  #construtor
        self.saldo = 0.0
        self.nome= nome
    end 
    
    def deposita(valor)
       # puts 'Depositando a quantia de '+ valor.to_s + ' reais.' # concatenação de string
        self.saldo += valor
        #self
        puts "Depositando a quantia de #{valor} reais  de #{self.nome}"  #interpolação de string
    end
end
c = Conta.new('ADILZA')
# c.saldo = 0.0
c.deposita(100.00)
puts c.saldo
c.deposita(15)
puts c.saldo

puts c.nome
# obj = "uma string"
# obj.puts "todos os objetos possuem o método puts?"
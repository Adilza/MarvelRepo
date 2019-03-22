# Ruby é uma linguagem considerada puramente orientada a objetos
# Porque no Ruby tudo são objetos

# Classe possui atributos e métodos
# Caracteristicas e Ações

# Carro (Nome, Marca, Modelo, Cor, Quantidade de Portas, etc...)
#  Ligar, Buzinar, Parar, etc..

class Carro
    attr_accessor :nome
    def ligar
        puts 'O carro está pronto'
    end
end 
    civic = Carro.new
    civic.nome='Civic'
    civic.ligar

    puts civic.nome
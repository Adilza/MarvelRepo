class Veiculo
    attr_accessor :nome, :marca, :modelo
    def initialize(nome, marca, modelo)
        self.nome = nome
        self.marca = marca
        self.modelo = modelo        
    end
    def ligar
        puts "#{nome} está pronto para partir."
    end
    def buzinar
        puts 'Beep! Beep!'
    end 
    
end

class Carro < Veiculo
    # attr_accessor :nome, :marca, :modelo
    
    # def initialize(nome, marca, modelo)
    #     self.nome = nome
    #     self.marca = marca
    #     self.modelo = modelo        
    # end
    # def ligar
    #     puts "#{nome} está pronto para partir."
    # end
    # def buzinar
    #     puts 'Beep! Beep!'
    # end
    def dirigir
        puts "#{nome} iniciando o trajeto."
    end
end

civic = Carro.new('Civic', 'Honda', 'SI')
civic.ligar
civic.buzinar
civic.dirigir

lancer = Carro.new('Lancer', 'Mitsubishi', 'EVO')
lancer.ligar
lancer.buzinar
lancer.dirigir 

class Moto < Veiculo
    # attr_accessor :nome, :marca, :modelo
    
    # def initialize(nome, marca, modelo)
    #     self.nome = nome
    #     self.marca = marca
    #     self.modelo = modelo        
    # end
    # def ligar
    #     puts "#{nome} está pronto para partir."
    # end
    # def buzinar
    #     puts 'Beep! Beep!'
    # end
    def pilotar
        puts "#{nome} iniciando o trajeto."
    end
end

fazer = Moto.new('Lancer', 'Mitsubishi', 'EVO')
fazer.ligar
fazer.buzinar
fazer.pilotar 
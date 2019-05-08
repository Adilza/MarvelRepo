class Conta
    attr_accessor :saldo, :mensagem

    def initialize(saldo)
        self.saldo = saldo
        # self.mensagem = mensagem
    end
    def saca(valor, max, taxa)
        if (valor >self.saldo)
            self.mensagem ='Saldo insuficiente para saque :('
        elsif (valor > max)
            self.mensagem ='Limite máximo por saque é de R$ ' + max.to_s
        else
            self.saldo -=valor + taxa
        end 
    end
end


class ContaCorrente < Conta
    
    # def saca(valor)
    #     if (valor >self.saldo)
    #         self.mensagem ='Saldo insuficiente para saque :('
    #     elsif (valor > 700.00)
    #         self.mensagem ='Limite máximo por saque é de R$ 700'
    #     else
    #         self.saldo -=valor  
    #     end 
    # end
    def saca(valor, max= 700, taxa= 5.00)
        super
    end
end 

class ContaPoupanca < Conta
    # attr_accessor :saldo, :mensagem

    # def initialize(saldo)
    #     self.saldo = saldo
    #     # self.mensagem = mensagem
    # end
    # def saca(valor)
    #     if (valor >self.saldo)
    #         self.mensagem ='Saldo insuficiente para saque :('
    #     elsif (valor > 500.00)
    #         self.mensagem ='Limite máximo por saque é de R$ 500'
    #     else
    #         self.saldo -=valor  
    #     end 
    # end
    def saca(valor, max= 500, taxa= 2.00)
        super
    end
end 
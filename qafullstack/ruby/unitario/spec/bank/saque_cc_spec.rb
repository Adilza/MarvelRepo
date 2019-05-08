require_relative'../../app/bank'
# class ContaCorrente
#     attr_accessor :saldo, :mensagem

#     def initialize(saldo)
#         self.saldo = saldo
#         # self.mensagem = mensagem
#     end
#     def saca(valor)
#         if (valor >self.saldo)
#             self.mensagem ='Saldo insuficiente para saque :('
#         elsif (valor > 700.00)
#             self.mensagem ='Limite máximo por saque é de R$ 700'
#         else
#             self.saldo -=valor  
#         end 
#     end
# end 
describe ContaCorrente do

    describe 'Saque' do
        context 'quando o valor é positivo' do
            before(:all) do
                @cc= ContaCorrente.new(1000.00)
                @cc.saca(200.00)

            end
            it 'então atualiza saldo' do
                expect(@cc.saldo).to eql 795.00
            end
        end
        context 'quando o saldo é zero' do
            before(:all) do
            @cc = ContaCorrente.new(0.00)
            @cc.saca(10.00)
            end
            it 'vejo a mensagem' do
                expect(@cc.mensagem).to eql 'Saldo insuficiente para saque :('
            end
            it 'meu saldo permanece com zero' do
                expect(@cc.saldo).to eql 0.00
            end
        end
        context 'quando o saldo é insuficiente' do
            before(:all) do
            @cc = ContaCorrente.new(100.00)
            @cc.saca(101.00)
            end
            it 'vejo a mensagem' do
                expect(@cc.mensagem).to eql 'Saldo insuficiente para saque :('
            end
            it 'meu saldo permanece com zero' do
                expect(@cc.saldo).to eql 100.00
            end
        end
        context 'quando o valor do saque é o maior que o  limite por transação' do
            before(:all) do
            @cc = ContaCorrente.new(1000.00)
            @cc.saca(701.00)
            end
            it 'vejo a mensagem' do
                expect(@cc.mensagem).to eql 'Limite máximo por saque é de R$ 700'
            end
            it 'meu saldo permanece conforme o valor inicial' do
                expect(@cc.saldo).to eql 1000.00
            end
        end
    end

end

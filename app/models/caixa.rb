class Caixa < ApplicationRecord
  belongs_to :compra
  belongs_to :despesa
  belongs_to :venda
  belongs_to :costura
  belongs_to :corte
  belongs_to :estampa
end

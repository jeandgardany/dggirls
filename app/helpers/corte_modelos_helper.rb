module CorteModelosHelper

	def corte_qtd_total
    	if self.corte.blank?
      			0
    	else
      	   self.corte.qtd_total
    	end
    end

    def corte_compra_valor
    	if self.corte.blank?
      			0
    	else
      	   self.corte.compra.valor
    	end
    end

end

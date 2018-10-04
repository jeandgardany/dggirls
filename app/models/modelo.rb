class Modelo < ApplicationRecord
	has_many :cortes
	has_many :estampas
	has_many_attached :fotos
end

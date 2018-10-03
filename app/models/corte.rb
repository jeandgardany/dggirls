class Corte < ApplicationRecord
  belongs_to :compra
  has_many :corte_modelos
  has_many :modelos

  accepts_nested_attributes_for :compra, :corte_modelos, :modelos, reject_if: :all_blank, allow_destroy: true


end

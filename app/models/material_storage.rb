class MaterialStorage < ApplicationRecord
  belongs_to  :material_kind
  belongs_to  :material_genre
end

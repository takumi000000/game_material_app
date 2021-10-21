class MaterialKind < ApplicationRecord
  has_many  :material_storages
  has_many  :requests
end

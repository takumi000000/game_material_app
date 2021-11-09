class MaterialGenre < ApplicationRecord
  has_many  :material_storages
  has_many  :requests_details
end

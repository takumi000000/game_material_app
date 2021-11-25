class Request < ApplicationRecord
  belongs_to  :material_kind
  belongs_to  :user
  def order_user
    return User.find(self.order_user_id)
  end
end

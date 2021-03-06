class User < ApplicationRecord
  has_many  :request
  has_many  :material_storage
  def user_orders
    return Rewuest.where(order_user_id: self.id)
  end

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end

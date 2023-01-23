class User < ApplicationRecord
  has_many :user_permissions, dependent: :destroy
  has_many :permissions, through: :user_permissions

  def to_hash
    attributes
  end
end

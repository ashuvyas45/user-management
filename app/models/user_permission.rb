class UserPermission < ApplicationRecord
  belongs_to :user
  belongs_to :permission

  def to_hash
    attributes
  end
end

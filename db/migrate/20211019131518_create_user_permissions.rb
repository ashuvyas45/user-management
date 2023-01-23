class CreateUserPermissions < ActiveRecord::Migration[6.1]
  def change
    create_table :user_permissions do |t|
      t.references :user, index: true
      t.references :permission, index: true
      t.timestamps
    end
  end
end

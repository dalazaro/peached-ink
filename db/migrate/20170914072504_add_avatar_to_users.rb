class AddAvatarToUsers < ActiveRecord::Migration[5.1]
  change_table :users do |t|
    t.string :avatar
  end
end

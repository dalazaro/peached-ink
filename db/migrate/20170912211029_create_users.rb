class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :username
      t.string :email_address
      t.string :password_digest
      t.text :bio
      t.text :artist_statement

      t.timestamps
    end
  end
end
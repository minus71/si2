class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :account_name
      t.string :email
      t.text :password

      t.timestamps
    end
  end
end

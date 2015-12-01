class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :nome
      t.text :description
      t.text :phone
      t.text :email
      t.boolean :status

      t.timestamps null: false
    end
  end
end

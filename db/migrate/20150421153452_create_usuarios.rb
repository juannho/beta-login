class CreateUsuarios < ActiveRecord::Migration
  def change
    create_table :usuarios do |t|
      t.string :rut
      t.string :nombre
      t.string :apellidos
      t.string :email
      t.string :username
      t.string :password

      t.timestamps null: false
    end
  end
end

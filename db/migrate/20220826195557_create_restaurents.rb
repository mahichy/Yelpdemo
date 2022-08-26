class CreateRestaurents < ActiveRecord::Migration[7.0]
  def change
    create_table :restaurents do |t|
      t.string :name
      t.string :address
      t.string :phone_number
      t.string :websit

      t.timestamps
    end
  end
end

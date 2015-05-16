class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.integer :star
      t.text :comment

      t.timestamps null: false
    end
  end
end

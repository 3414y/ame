class CreateSitumons < ActiveRecord::Migration[6.1]
  def change
    create_table :situmons do |t|
      t.integer :user_id
      t.text :naiyou
      t.integer :kategori
      t.datetime :nitiji

      t.timestamps
    end
  end
end

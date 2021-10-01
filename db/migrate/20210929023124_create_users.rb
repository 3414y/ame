class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :akaunto
      t.string :pasuwado
      t.integer :gakunen
      t.integer :kumi
      t.string :simei

      t.timestamps
    end
  end
end

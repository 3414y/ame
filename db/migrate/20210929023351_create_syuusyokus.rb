class CreateSyuusyokus < ActiveRecord::Migration[6.1]
  def change
    create_table :syuusyokus do |t|
      t.string :gakkoumei
      t.integer :gakka_id
      t.string :kennai
      t.string :shp
      t.float :hyoutei

      t.timestamps
    end
  end
end

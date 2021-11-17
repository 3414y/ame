class CreateSindans < ActiveRecord::Migration[6.1]
  def change
    create_table :sindans do |t|
      t.string :sinrosaki
      t.string :kennai
      t.integer :syokusyu
      t.float :hyoutei

      t.timestamps
    end
  end
end

class CreateSyokusyus < ActiveRecord::Migration[6.1]
  def change
    create_table :syokusyus do |t|
      t.string :syokusyumei

      t.timestamps
    end
  end
end

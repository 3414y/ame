class CreateTensus < ActiveRecord::Migration[6.1]
  def change
    create_table :tensus do |t|
      t.integer :seiseki_id
      t.integer :kyouka_id
      t.integer :tokuten
      t.integer :hyoutei

      t.timestamps
    end
  end
end

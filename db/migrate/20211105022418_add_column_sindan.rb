class AddColumnSindan < ActiveRecord::Migration[6.1]
  def change
    add_column :sindans, :syokusyu, :integer
  end
end

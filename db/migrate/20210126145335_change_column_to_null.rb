class ChangeColumnToNull < ActiveRecord::Migration[6.0]
  def up
    change_column_null :drinks, :total_abv, true
  end

  def down
    change_column_null :drinks, :total_abv, false
  end
end

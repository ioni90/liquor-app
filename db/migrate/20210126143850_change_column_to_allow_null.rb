class ChangeColumnToAllowNull < ActiveRecord::Migration[6.0]
  def up
    change_column :drinks, :volume,:integer, null: true
  end

  def down
    change_column :drinks, :volume,:integer, null: false
  end
end

class RenameDrinkDateColumnDrinks < ActiveRecord::Migration[6.0]
  def change
    rename_column :drinks, :drink_date, :start_time
  end
end

class RemoveHealthinessFromDrinks < ActiveRecord::Migration[6.0]
  def change
    remove_column :drinks, :healthiness, :integer
  end
end

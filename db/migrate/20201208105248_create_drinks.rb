class CreateDrinks < ActiveRecord::Migration[6.0]
  def change
    create_table :drinks do |t|
      t.references :user, null: false, foreign_key: true
      t.datetime :drink_date, null: false
      t.boolean :non_drinking, null: false, default: false
      t.integer :type_id, null: false
      t.integer :volume, null: false
      t.integer :type2_id
      t.integer :volume2
      t.integer :type3_id
      t.integer :volume3
      t.integer :type4_id
      t.integer :volume4
      t.integer :type5_id
      t.integer :volume5
      t.integer :healthiness, null: false
      t.integer :total_abv, null: false
      t.text :comment

      t.timestamps
    end
  end
end

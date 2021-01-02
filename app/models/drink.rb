class Drink < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :type, :type2, :type3, :type4, :type5
  belongs_to :user

  with_options presence: true do
    validates :start_time
    validates :volume
    validates :total_abv
  end

  validates :start_time, uniqueness: { scope: :user_id }
  validates :type_id, numericality: { other_than: 0 }

 end
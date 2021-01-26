class Drink < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :type
  belongs_to :type2
  belongs_to :type3
  belongs_to :type4
  belongs_to :type5
  belongs_to :user

  with_options presence: true do
    validates :start_time
  end

  validates :start_time, uniqueness: { scope: :user_id }

 end
class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :age, :favorite, :gender, :prefecture, :region

  with_options numericality: { other_than: 0 } do
    validates :gender_id
    validates :prefecture_id
    validates :region_id
  end
end

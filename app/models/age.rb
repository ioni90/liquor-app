class Age < ActiveHash::Base
  self.data = [
    { id: 0, name: '--' },
    { id: 1, name: 'アラサー未満' },
    { id: 2, name: 'アラサー' },
    { id: 3, name: 'アラフォー' },
    { id: 4, name: 'アラフィフ' },
    { id: 5, name: 'アラ還' },
    { id: 6, name: 'アラヒャク' },
  ]

  include ActiveHash::Associations
  has_many :users
end
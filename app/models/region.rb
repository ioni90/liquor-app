class Region < ActiveHash::Base
  self.data = [
    { id: 0, name: '--' },
    { id: 1, name: '北' },
    { id: 2, name: '南' },
    { id: 3, name: '西' },
    { id: 4, name: '東' },
    { id: 5, name: '山間部' },
    { id: 6, name: '海沿い' },
    { id: 7, name: '島' },
    { id: 8, name: 'その他' },
  ]

  include ActiveHash::Associations
  has_many :users
end
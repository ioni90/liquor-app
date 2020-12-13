class Favorite < ActiveHash::Base
  self.data = [
    { id: 0, name: '--' },
    { id: 1, name: '赤ワイン' },
    { id: 2, name: '白ワイン' },
    { id: 3, name: '日本酒' },
    { id: 4, name: 'ビール' },
    { id: 5, name: '焼酎' },
    { id: 6, name: '酎ハイ' },
    { id: 7, name: 'ウィスキー' },
    { id: 8, name: '梅酒' },
    { id: 9, name: 'カクテル' },
    { id: 10, name: 'ジン' },
    { id: 11, name: 'ブランデー' },
    { id: 12, name: 'リキュール' },
    { id: 13, name: 'ラム' },
    { id: 14, name: 'マッコリ' },
    { id: 15, name: '泡盛' },
    { id: 16, name: 'テキーラ' },
    { id: 17, name: 'ピスコ' },
    { id: 18, name: 'シードル' },
    { id: 19, name: 'カルヴァドス' },
    { id: 20, name: 'リモンチェッロ' },
    { id: 21, name: 'どぶろく' },
    { id: 22, name: '紹興酒' },
    { id: 23, name: '白酒' },
    { id: 24, name: 'バーボン' },
    { id: 25, name: 'クワス' },
    { id: 26, name: 'トノト' },
    { id: 27, name: 'テラ' },
    { id: 28, name: 'ミード' },
    { id: 29, name: '馬乳酒' },
    { id: 30, name: 'ヤシ酒' }
  ]

  include ActiveHash::Associations
  has_many :users
end
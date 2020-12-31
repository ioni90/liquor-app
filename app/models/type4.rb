class Type4 < ActiveHash::Base
  self.data = [
    { id: 0, name: '--' },
    { id: 1, name: '赤ワイン' },
    { id: 2, name: '白ワイン' },
    { id: 3, name: '日本酒' },
    { id: 4, name: 'ビール' },
    { id: 5, name: '焼酎' },
    { id: 6, name: '酎ハイ' },
    { id: 7, name: 'ストロングゼロ'},
    { id: 8, name: 'ウィスキー' },
    { id: 9, name: '梅酒' },
    { id: 10, name: 'カクテル' },
    { id: 11, name: 'マッコリ' },
    { id: 12, name: '泡盛' },
    { id: 13, name: 'テキーラ' },
    { id: 14, name: 'その他(アルコール度数5％程度)' },
    { id: 15, name: 'その他(アルコール度数10％程度)' },
    { id: 16, name: 'その他(アルコール度数20％程度)' },
    { id: 17, name: 'その他(アルコール度数30％程度)' },
    { id: 18, name: 'その他(アルコール度数40％程度)' },
    { id: 19, name: 'その他(アルコール度数50％程度)' },
  ]

  include ActiveHash::Associations
  has_many :drinks
end
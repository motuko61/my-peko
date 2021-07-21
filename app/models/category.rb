class Category < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '寿司・魚料理' },
    { id: 3, name: '和食・日本料理' },
    { id: 4, name: '麺類' },
    { id: 5, name: '丼もの・揚げ物' },
    { id: 6, name: 'お好み焼き・粉物' },
    { id: 7, name: '郷土料理' },
    { id: 8, name: 'アジア・エスニック' },
    { id: 9, name: '中華' },
    { id: 10, name: 'イタリアン' },
    { id: 11, name: '洋食' },
    { id: 12, name: 'フレンチ' },
    { id: 13, name: 'アメリカ料理' },
    { id: 14, name: 'アフリカ料理' },
    { id: 15, name: '珍しい各国料理' },
    { id: 16, name: '焼肉・ステーキ' },
    { id: 17, name: '焼鳥・串料理' },
    { id: 18, name: 'こだわりの肉料理' },
    { id: 19, name: '鍋' },
    { id: 20, name: 'しゃぶしゃぶ・すき焼き' },
    { id: 21, name: '居酒屋・バー' },
    { id: 22, name: 'カフェ・スイーツ' },
    { id: 23, name: 'ファミレス・ファーストフード' },
    { id: 24, name: 'ビュッフェ・バイキング' },
    { id: 25, name: 'その他' }
  ]
  include ActiveHash::Associations
  has_many :posts
  
end  
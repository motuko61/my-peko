class Price < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '~1000円以下' },
    { id: 3, name: '1000円~3000円' },
    { id: 4, name: '3000円~5000円' },
    { id: 5, name: '5000円~10000円' },
    { id: 6, name: '20000円以下' },
    { id: 7, name: '30000円以下' },
    { id: 8, name: '30000円以上' }
  ]
  
  include ActiveHash::Associations
  has_many :posts
end  
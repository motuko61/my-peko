class Teach < ActiveHash::Base
 self.data = [
  { id: 1, name: '--' },
  { id: 2, name: '誰かに教えたい' },
  { id: 3, name: '自分だけの秘密にする' }
 ]

 include ActiveHash::Associations
  has_many :posts
end  
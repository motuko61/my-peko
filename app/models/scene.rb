class Scene < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '一人' },
    { id: 3, name: '友人' },
    { id: 4, name: '恋人' },
    { id: 5, name: '家族' },
    { id: 6, name: '仕事関係' }    
  ]  

  include ActiveHash::Associations
  has_many :posts
end  
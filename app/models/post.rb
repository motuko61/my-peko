class Post < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category
  belongs_to :price
  belongs_to :scene
  belongs_to :teach

  has_one_attached :image
  belongs_to :user
  has_many :messages

  with_options presence: true do
    validates :name
    validates :user
    validates :image
  end

  with_options numericality: { other_than: 1 } do
    validates :category_id
    validates :price_id
    validates :scene_id
    validates :teach_id
  end
    
end

class Gossip < ApplicationRecord
  belongs_to :user
  has_many :join_gossip_tags
  has_many :tag, through: :join_gossip_tags
  has_many :comments
  has_many :likes  
  validates :title,
    presence: true,
    uniqueness: true ,
    length: { in: 3..50 }
  
  validates :content,
    presence: true,
    uniqueness: true,
    length: { minimum: 100 }
  
    validate :is_user_the_author

    def is_user_the_author
      if Current.user && user
        errors.add(:user_id, ('Désolé vous n\'êtes pas autorisé à faire ça')) unless Current.user.id == user.id
      end
    end
end

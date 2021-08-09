class Comment < ApplicationRecord
  belongs_to :gossip
  belongs_to :user
  validates :content, presence: true, length: {in:5..500}
  validate :is_user_the_author

  def is_user_the_author
    if Current.user && user
      errors.add(:user_id, ('Désolé vous n\'êtes pas autorisé à faire ça')) unless Current.user.id == user.id
    end
  end
  def author
    User.find(self.user_id).first_name
  end
end

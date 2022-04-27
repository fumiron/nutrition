class Food < ApplicationRecord
  belongs_to :user
  has_many :favorites, dependent: :destroy
  validates :name, presence: true 

  def self.search(search)
    if search != ""
      Food.where('text LIKE(?)', "%#{search}%")
    else
      Food.all
    end
  end

  def favorite_by?(user)
    favorites.where(user_id: user).exists?
  end

end

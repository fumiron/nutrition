class Food < ApplicationRecord
  belongs_to :user

  validates :name, presence: true 

  def self.search(search)
    if search != ""
      Food.where('text LIKE(?)', "%#{search}%")
    else
      Food.all
    end
  end
end

require 'rails_helper'

RSpec.describe Favorite, type: :model do
  before do
    @favorite = FactoryBot.build(:favorite)
  end
  describe 'お気に入り登録' do
    context 'お気に入り登録できないとき' do
      it 'user_idが空では登録できない' do
        @favorite.user_id = ''
        @favorite.valid?
        expect(@favorite.errors.full_messages).to include("User must exist")
      end
      it 'Food_idが空では登録できない' do
        @favorite.food_id = ''
        @favorite.valid?
        expect(@favorite.errors.full_messages).to include("Food must exist")
      end
    end
  end
end
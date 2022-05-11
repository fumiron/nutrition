require 'rails_helper'

RSpec.describe Food, type: :model do
  before do
    @food = FactoryBot.build(:food)
  end
  describe '食品登録' do
    context '食品登録できるとき' do
      it '食品名が存在すれば登録できる' do
        expect(@food).to be_valid
      end
    end
    context '食品登録できないとき' do
      it '食品名が空では登録できない' do
        @food.name = ''
        @food.valid?
        expect(@food.errors.full_messages).to include("Name can't be blank")
      end
    end
  end
end

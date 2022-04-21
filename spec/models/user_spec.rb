require 'rails_helper'

RSpec.describe User, type: :model do
  before do
    @user = FactoryBot.build(:user)
  end
  describe 'ユーザー新規登録' do
    context '新規登録できるとき' do
      it 'nicknameとpasswordとpassword_confirmationが存在すれば登録できる' do
        expect(@user).to be_valid
      end
    end
    context '新規登録できないとき' do
      it 'nicknameが空では登録できない' do
        @user.nickname = ''
        @user.valid?
        expect(@user.errors.full_messages).to include("Nickname can't be blank")
      end
      it 'passwordが空では登録できない' do
        @user.password = ''
        @user.valid?
        expect(@user.errors.full_messages).to include("Password can't be blank")
      end
      it 'passwordが5文字以下では登録できない' do
        @user.password = 'ab345'
        @user.password_confirmation = 'ab345'
        @user.valid?
        expect(@user.errors.full_messages).to include('Password is too short (minimum is 6 characters)')
      end
      it 'passwordが129文字以上では登録できない' do
        @user.password = Faker::Internet.password(min_length: 129)
        @user.password_confirmation = @user.password
        @user.valid?
        expect(@user.errors.full_messages).to include('Password is too long (maximum is 128 characters)')
      end
      it 'passwordが英語のみでは登録できない' do
        @user.password = 'ertyui'
        @user.password_confirmation = @user.password
        @user.valid?
        expect(@user.errors.full_messages).to include('Password is invalid')
      end
      it 'passwordが数字のみでは登録できない' do
        @user.password = '123456'
        @user.password_confirmation = @user.password
        @user.valid?
        expect(@user.errors.full_messages).to include('Password is invalid')
      end
      it 'passwordが全角英数字では登録できない' do
        @user.password = '１２３zsw'
        @user.password_confirmation = @user.password
        @user.valid?
        expect(@user.errors.full_messages).to include('Password is invalid')
      end
      it 'passwordとpassword_confirmationが不一致では登録できない' do
        @user.password = 'abc456'
        @user.password_confirmation = 'abc4567'
        @user.valid?
        expect(@user.errors.full_messages).to include("Password confirmation doesn't match Password")
      end
    end
  end
end

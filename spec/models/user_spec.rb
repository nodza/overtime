require 'rails_helper'

RSpec.describe User, type: :model do
  before do
      @user = User.create(email: "adminuser@example.com", password: "zxzxzx", password_confirmation: "zxzxzx", first_name: "Jaimie", last_name: "Lannister")
  end
  describe "creation" do
    it "can be created" do
      expect(@user).to be_valid
    end

    it "cannot be created without first_name, last_name" do
      @user.first_name = nil
      @user.last_name = nil
      expect(@user).to_not be_valid
    end
  end
  describe "custom name methods" do
    it "has full name method that combines first name and last name" do
      expect(@user.full_name).to eq("Lannister, Jaimie")
    end
  end
end

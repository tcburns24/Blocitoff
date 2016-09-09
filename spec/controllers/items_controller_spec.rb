require 'rails_helper'

RSpec.describe ItemsController, type: :controller do

  let(:my_user) { User.create!(email: "user1@blocitoff.com", password: "password", password_confirmation: "password") }

  before(:each) do
    @my_user = FactoryGirl.create(:user)
    sign_in @my_user
  end

  describe "POST create" do
    it "increases the number of Post by 1" do
      expect{ item :create, name: my_name}.to change(Item,:count).by(1)
    end
  end
end

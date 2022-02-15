require 'rails_helper'

RSpec.describe "Admin::Users", type: :request do
  before do 
    sign_in @current_user = create(:admin)
  end

  # it '#index' do 
  #   user_1 = create(:user) 
  #   user_2 = create(:user) 
  #   get '/admin/users/' 
  #   expect(assigns(:users)).to contain_exactly *[user_1, user_2] 
  # end

  it '#destroy' do 
    user = create(:user) 
    expect { delete "/admin/users/#{user.id}" }.to change(User, :count).by -1 
  end

  # it "#index" do
  #   user_1 = create(:user)
  #   user_2 = create(:user)
  #   get '/admin/users'
  #   expect(assigns(:users)).to contain_exactly *[users]
  # end

  # it "new" do
  #   get "/admin/users/new"
  #   expect(assigns(:user)).to be_a_new User
  # end

  # it "create" do
  #   expect {
  #     post "/admin/users/",
  #       params: {
  #         user: attributes_for(:user)
  #       }
  #   }.to change(User, :count).by 1
  # end

  # it "delete" do
  #   user = create(:user)
  #   expect {
  #     delete "/admin/users/#{user.id}"
  #   }.to change(User, :count).by(-1)
  #   expect(response).to be_redirect
  # end
end

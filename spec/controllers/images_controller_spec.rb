require 'rails_helper'

RSpec.describe ImagesController, type: :controller do

  describe "anonymous user" do
    before :each do
      login_with nil
    end

    it "should be redirected to signin" do
      get :new
      expect( response ).to redirect_to( new_user_session_path )
    end
  end

  before do
    @user = FactoryBot.create(:user)
    #@image = FactoryBot.create(:image, user: @user)
    @image = FactoryBot.create(:image)
    @image_attributes=FactoryBot.attributes_for(:image, :user_id => @user.id)
  end 

  describe "GET #new" do
    it "assigns a new Image as @image" do
      get :new, params: { :user_id => @user}
      expect(assigns(:image)).to be_a_nil
    end
  end

  describe "POST #create" do  
    it 'creates a new Image with valid attributes' do
      image_params = FactoryBot.attributes_for(:image)
      expect { post :create, params: { image: image_params }}.to change(Image, :count).by(0) 
    end
  end

end
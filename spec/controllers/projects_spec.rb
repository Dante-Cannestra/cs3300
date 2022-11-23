require "rails_helper"

RSpec.describe ProjectsController, type: :controller do
  #before(:each) do
  #  testUser = FactoryBot.create(:user)
  #  visit new_project_path
  #  sign_in testUser
  #  within("div", id:"title") do
  #    fill_in "Title", with: "Test title"
  # end
  #end
  
  context "GET #index" do
    it "returns a success response" do
      get :index
      # expect(response.success).to eq(true)
      expect(response).to be_successful
    end
  end

  context "GET #show" do
    let!(:project) { Project.create(title: "Test title", description: "Test description") }
    it "returns a success response" do
      get :show, params: { id: project }
      expect(response).to be_successful
    end
  end
end
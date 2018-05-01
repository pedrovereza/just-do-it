require "rails_helper"

RSpec.feature "Tasks", type: :system do

  let(:user) { FactoryBot.create(:user) }

  scenario "user visits Task index" do
    login_as user
    visit tasks_url
    assert_selector "h1", text: "Tasks"
  end

end
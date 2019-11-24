require "rails_helper"
require 'capybara/rails'
require 'pry'

feature "user creates a todo" do 
  scenario "by signing in and successfully creating " do
    visit root_path
    fill_in "Email", with: "pmohansaikrishna@gmail.com"
    click_on "Sign in"
    expect(page).to have_content "Posts"
    # click_on "Create New Post"
    # fill_in("post_name", with: "post first name")
    # fill_in("post_description", with: "post description")
    # click_on "Submit Post"
    # expect(page).to have_content("successfully created post post first name post description")
  end
end
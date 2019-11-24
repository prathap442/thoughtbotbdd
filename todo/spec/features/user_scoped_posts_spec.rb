require "rails_helper"
require 'capybara/rails'
require 'pry'

feature "user sees his own posts" do
  # scenario "doesn't see other posts" do 
  #   visit root_path
  #   first_email = "p1@gmail.com"
  #   second_email = "p2@gmail.com"
  #   first_email_random_post = Random.rand(12345) 
  #   second_email_random_post = Random.rand(89899) 
  #   sign_in_as(first_email)
  #   click_on "Create New Post"
  #   fill_in("post_name", with: "post first name")
  #   fill_in("post_description", with: "post description")
  #   click_on "Submit Post"
  #   expect(page).to have_content("successfully created post post first name post description")
  #   sign_in_as(second_email)
  #   click_on "Create New Post"
  #   expect(page).to_not have_content("post#{second_email_random_post}")
  # end
end
# this module we are just creating for the sake of the feature specs
# and so in the rails_helper.rb we just write to 
# config.include Features, type: :feature
# so this gonna be a kind of flag that says to include the features module only in the feature specs
require 'pry'
module Features
  def sign_in

  end

  def sign_in_as(some_email)
    fill_in "Email",with: some_email
    click_on "Sign in"
  end
end
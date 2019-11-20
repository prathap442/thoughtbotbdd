require 'pry'
require 'rails_helper'
require 'capybara/rails'
describe 'check posts stuff' do
  describe "on visiting root page" do
    it 'used to show all the posts' do 
      visit root_path
      expect(page.status_code).to be(200)
    end

    it 'should find the contents "posts" on the page' do
      visit root_path
      expect(page).to have_css("h1", :text => "Posts")
    end

    describe "After visiting the home page" do
      before(:example) do
        visit root_path
        click_link('Create New Post')
        expect(page).to have_css("h1", :text => "Create New Post")
      end
      
      it 'should find the text \' Create New Post \'' do
        fill_in("post_name", with: "post first name")
        fill_in("post_description", with: "post description")
        click_on "Submit Post"
        expect(page).to have_content("successfully created post")
      end

      it 'should find the edit link of the post show page' do
        fill_in("post_name", with: "post first name")
        fill_in("post_description", with: "post description")
        click_on "Submit Post"
        expect(page).to have_link("Edit")
      end
    end

    describe 'updating the records of the post' do

      before(:example) do 
        visit root_path
        click_link('Create New Post')
        expect(page).to have_css("h1", :text => "Create New Post")
        fill_in("post_name", with: "post first name")
        fill_in("post_description", with: "post description")
        click_on "Submit Post"      
      end
      
      it  'should be able to update the post name ' do 
        expect(page).to have_content("successfully created post")
        click_on "Edit"
        fill_in("post_name",with: "post first name changed")
        click_on "Submit Post"
        expect(page).to have_content("successfully updated post") 
      end
    end

    describe "deleting the records of the post" do 
      before(:example) do 
        visit root_path
        click_link('Create New Post')
        expect(page).to have_css("h1", :text => "Create New Post")
        fill_in("post_name", with: "post first name")
        fill_in("post_description", with: "post description")
        click_on "Submit Post"      
      end
      
      
      it 'should be able to destroy the post' do 
        expect(page).to have_content("successfully created post")
        expect(page).to have_link('Delete')
        click_on "Delete"
        expect(page).to have_content("successfully destroyed post") 
      end
    end

  end
end

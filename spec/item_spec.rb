require 'spec_helper'
require 'capybara/rspec'
require_relative '../app'

Capybara.app = MyApp

feature "Manage items" do

  scenario "visits homepage and has a title" do
    visit("/")

    expect(page).to have_title("Our Awesome Homepage")
    click_link("Create New Item")
    


  end
end
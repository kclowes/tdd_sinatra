require 'spec_helper'
require 'capybara/rspec'
require_relative '../app'

Capybara.app = MyApp

feature "Manage items" do

  scenario "visits homepage and has a title" do
    visit("/")

    expect(page).to have_title("Our Awesome Homepage")
    click_link("Create New Item")
    fill_in("new_item", :with => "Chicken")
    click_on("Submit")
    expect(page).to have_content("Chicken")
  end

  scenario "visits items page and should have show link" do
    visit ("/items")
    click_on("Show")
    expect(page).to have_content("Chicken")

  end
end
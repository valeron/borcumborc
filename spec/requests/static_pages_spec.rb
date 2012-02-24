require 'spec_helper'

describe "Static pages" do

  describe "Home page" do

    it "should have the h1 'Sample App'" do
      visit root_path
      page.should have_selector('h1', text: 'Sample App')
    end

    it "should have the title 'Home'" do
      visit root_path
      page.should have_selector('title',
                        text: "Ruby on Rails Tutorial Sample App | Home")
    end
  end

  describe "About page" do

    it "should have the h1 'About'" do
      visit about_path
      page.should have_selector('h1', text: 'About')
    end

    it "should have the title 'About'" do
      visit about_path
      page.should have_selector('title',
                    text: "Ruby on Rails Tutorial Sample App | About")
    end
  end

  describe "Login page" do

    it "should have the h1 'Login'" do
      visit login_path
      page.should have_selector('h1', text: 'Login')
    end

    it "should have the title 'Login'" do
      visit login_path
      page.should have_selector('title',
                        text: "Ruby on Rails Tutorial Sample App | Login")
    end
  end
end
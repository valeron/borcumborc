require 'spec_helper'

describe "Static pages" do

  subject { page }

  describe "Home page" do
    before { visit root_path }

    it { should have_selector('h1',    text: 'Sample App') }
    it { should have_selector('title', text: full_title('Home')) }
  end

  describe "About page" do
    before { visit about_path }

    it { should have_selector('h1',    text: 'About') }
    it { should have_selector('title', text: full_title('About')) }
  end

  describe "Login page" do
    before { visit login_path }

    it { should have_selector('h1',    text: 'Login') }
    it { should have_selector('title', text: full_title('Login')) }
  end
end
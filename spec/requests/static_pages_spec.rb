require 'spec_helper'


describe "Static pages" do

  subject { page }
  
  describe "Home page" do
    before { visit root_path }

    #it "should have the content 'Sample App'" do
    #  expect(page).to have_content('Sample App')
    #end

    it { should have_content('Sample App')}
    it { should have_title('Ruby on Rails Tutorial Sample App')}
    it { should_not have_title('| Home')}

    #it "should have the base title" do
    #  expect(page).to have_title("Ruby on Rails Tutorial Sample App")
    #end
  end

  describe "Help page" do

    #it "should have the content 'Help'" do
    #  visit help_path
    #  expect(page).to have_content('Help')
    #end

    #it "should have the right title" do
    #  visit help_path
    #  expect(page).to have_title("Sample App | Help")
    #end
    
    before { visit help_path }

    it { should have_content('Help')}
    it { should have_title('Sample App | Help')}

  end

  describe "About page" do

    #it "should have the content 'About Us'" do
    #  visit about_path
    #  expect(page).to have_content('About Us')
    #end
    #it "should have the right title" do
    #  visit about_path
    #  expect(page).to have_title("Sample App | About")
    #end

    before { visit about_path }

    it { should have_content('About Us')}
    it { should have_title('Sample App | About')}

  end
  
  describe "Contact page" do
    
    #it "should have the content 'Contact'" do
    #  visit contact_path
    #  expect(page).to have_content('Contact')
    #end

    #it "should have the title 'Contact'" do
    #  visit contact_path
    #  expect(page).to have_title("Ruby on Rails Tutorial Sample App | Contact")
    #end

    before { visit contact_path }

    it { should have_content('Contact')}
    it { should have_title('Ruby on Rails Tutorial Sample App | Contact')}


  end


end


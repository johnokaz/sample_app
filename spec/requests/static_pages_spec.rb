require 'spec_helper'

describe "StaticPages" do

  describe "Homeページのテスト" do
    it "should have the content 'Sample App'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
	  visit '/static_pages/home'
	  expect(page).to have_content('Sample App')
    end

	it "タイトルにRuby on Rails Tutorial Sample Appが含まれている" do
	  visit '/static_pages/home'
	    expect(page).to have_title("Ruby on Rails Tutorial Sample App")
	end

	it "タイトルにHomeが含まれていない" do
	  visit '/static_pages/home'
	    expect(page).not_to have_title('| Home')
	end
  end

  describe "ヘルプページのテスト" do
    it "'Help'が含まれている" do
	  visit '/static_pages/help'
	  expect(page).to have_content('Help')
    end

	it "タイトルにRuby on Rails Tutorial Sample Appが含まれている" do
	  visit '/static_pages/help'
	    expect(page).to have_title("Ruby on Rails Tutorial Sample App")
	end

	it "タイトルにHelpが含まれている" do
	  visit '/static_pages/help'
	    expect(page).to have_title('| Help')
	end
  end

  describe "アバウトページのテスト" do
    it "'About Us'が含まれている" do
	  visit '/static_pages/about'
	  expect(page).to have_content('About Us')
    end

	it "タイトルにRuby on Rails Tutorial Sample Appが含まれている" do
	  visit '/static_pages/about'
	    expect(page).to have_title("Ruby on Rails Tutorial Sample App")
	end

	it "タイトルにAbout Usが含まれている" do
	  visit '/static_pages/about'
	    expect(page).to have_title('| About Us')
	end
  end

  describe "コンタクトページのテスト" do
    it "'Contact'が含まれている" do
	  visit '/static_pages/contact'
	  expect(page).to have_content('Contact')
    end

	it "タイトルにRuby on Rails Tutorial Sample Appが含まれている" do
	  visit '/static_pages/contact'
	    expect(page).to have_title("Ruby on Rails Tutorial Sample App")
	end

	it "タイトルにContactが含まれている" do
	  visit '/static_pages/contact'
	    expect(page).to have_title('| Contact')
	end
  end
end

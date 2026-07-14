require "spec_helper"

RSpec.describe "Theme Loading Integration", type: :feature do
  it "successfully boots the Active Admin login page and applies theme layouts" do
    # Visit the login page of the dummy Active Admin application
    visit "/admin/login"

    # Assert that the page loads with standard Active Admin logged-out styles
    expect(page).to have_css("body.active_admin.logged_out")
    expect(page).to have_css("#login")
    
    # Assert that the form elements exist
    expect(page).to have_field("Email")
    expect(page).to have_field("Password")
    expect(page).to have_button("Login")
    
    # Assert page title contains Login
    expect(page.title).to include("Login")
  end
end

require "application_system_test_case"

class MenusTest < ApplicationSystemTestCase
  setup do
    @menu = menus(:one)
  end

  test "visiting the index" do
    visit menus_url
    assert_selector "h1", text: "Menus"
  end

  test "should create menu" do
    visit menus_url
    click_on "New menu"

    fill_in "Bar", with: @menu.bar_id
    fill_in "Menu category", with: @menu.menu_category
    fill_in "Menu description", with: @menu.menu_description
    fill_in "Menu name", with: @menu.menu_name
    fill_in "Menu price", with: @menu.menu_price
    fill_in "Menu rank", with: @menu.menu_rank
    fill_in "Menu region", with: @menu.menu_region
    fill_in "Menu subcategory", with: @menu.menu_subcategory
    fill_in "User", with: @menu.user_id
    click_on "Create Menu"

    assert_text "Menu was successfully created"
    click_on "Back"
  end

  test "should update Menu" do
    visit menu_url(@menu)
    click_on "Edit this menu", match: :first

    fill_in "Bar", with: @menu.bar_id
    fill_in "Menu category", with: @menu.menu_category
    fill_in "Menu description", with: @menu.menu_description
    fill_in "Menu name", with: @menu.menu_name
    fill_in "Menu price", with: @menu.menu_price
    fill_in "Menu rank", with: @menu.menu_rank
    fill_in "Menu region", with: @menu.menu_region
    fill_in "Menu subcategory", with: @menu.menu_subcategory
    fill_in "User", with: @menu.user_id
    click_on "Update Menu"

    assert_text "Menu was successfully updated"
    click_on "Back"
  end

  test "should destroy Menu" do
    visit menu_url(@menu)
    click_on "Destroy this menu", match: :first

    assert_text "Menu was successfully destroyed"
  end
end

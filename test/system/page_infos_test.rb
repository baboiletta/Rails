require "application_system_test_case"

class PageInfosTest < ApplicationSystemTestCase
  setup do
    @page_info = page_infos(:one)
  end

  test "visiting the index" do
    visit page_infos_url
    assert_selector "h1", text: "Page Infos"
  end

  test "creating a Page info" do
    visit page_infos_url
    click_on "New Page Info"

    click_on "Create Page info"

    assert_text "Page info was successfully created"
    click_on "Back"
  end

  test "updating a Page info" do
    visit page_infos_url
    click_on "Edit", match: :first

    click_on "Update Page info"

    assert_text "Page info was successfully updated"
    click_on "Back"
  end

  test "destroying a Page info" do
    visit page_infos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Page info was successfully destroyed"
  end
end

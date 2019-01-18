require "application_system_test_case"

class BotanicalsTest < ApplicationSystemTestCase
  setup do
    @botanical = botanicals(:one)
  end

  test "visiting the index" do
    visit botanicals_url
    assert_selector "h1", text: "Botanicals"
  end

  test "creating a Botanical" do
    visit botanicals_url
    click_on "New Botanical"

    fill_in "Description", with: @botanical.description
    fill_in "Name", with: @botanical.name
    fill_in "Slug", with: @botanical.slug
    click_on "Create Botanical"

    assert_text "Botanical was successfully created"
    click_on "Back"
  end

  test "updating a Botanical" do
    visit botanicals_url
    click_on "Edit", match: :first

    fill_in "Description", with: @botanical.description
    fill_in "Name", with: @botanical.name
    fill_in "Slug", with: @botanical.slug
    click_on "Update Botanical"

    assert_text "Botanical was successfully updated"
    click_on "Back"
  end

  test "destroying a Botanical" do
    visit botanicals_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Botanical was successfully destroyed"
  end
end

require "application_system_test_case"

class GinsTest < ApplicationSystemTestCase
  setup do
    @gin = gins(:one)
  end

  test "visiting the index" do
    visit gins_url
    assert_selector "h1", text: "Gins"
  end

  test "creating a Gin" do
    visit gins_url
    click_on "New Gin"

    fill_in "Description", with: @gin.description
    fill_in "Distillary", with: @gin.distillary_id
    fill_in "Name", with: @gin.name
    fill_in "Slug", with: @gin.slug
    fill_in "Snippet", with: @gin.snippet
    click_on "Create Gin"

    assert_text "Gin was successfully created"
    click_on "Back"
  end

  test "updating a Gin" do
    visit gins_url
    click_on "Edit", match: :first

    fill_in "Description", with: @gin.description
    fill_in "Distillary", with: @gin.distillary_id
    fill_in "Name", with: @gin.name
    fill_in "Slug", with: @gin.slug
    fill_in "Snippet", with: @gin.snippet
    click_on "Update Gin"

    assert_text "Gin was successfully updated"
    click_on "Back"
  end

  test "destroying a Gin" do
    visit gins_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Gin was successfully destroyed"
  end
end

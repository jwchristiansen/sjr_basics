require "application_system_test_case"

class DinosaursTest < ApplicationSystemTestCase
  setup do
    @dinosaur = dinosaurs(:one)
  end

  test "visiting the index" do
    visit dinosaurs_url
    assert_selector "h1", text: "Dinosaurs"
  end

  test "creating a Dinosaur" do
    visit dinosaurs_url
    click_on "New Dinosaur"

    fill_in "Name", with: @dinosaur.name
    click_on "Create Dinosaur"

    assert_text "Dinosaur was successfully created"
    click_on "Back"
  end

  test "updating a Dinosaur" do
    visit dinosaurs_url
    click_on "Edit", match: :first

    fill_in "Name", with: @dinosaur.name
    click_on "Update Dinosaur"

    assert_text "Dinosaur was successfully updated"
    click_on "Back"
  end

  test "destroying a Dinosaur" do
    visit dinosaurs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Dinosaur was successfully destroyed"
  end
end

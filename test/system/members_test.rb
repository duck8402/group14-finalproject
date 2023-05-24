require "application_system_test_case"

class MembersTest < ApplicationSystemTestCase
  setup do
    @member = members(:one)
  end

  test "visiting the index" do
    visit members_url
    assert_selector "h1", text: "Members"
  end

  test "should create member" do
    visit members_url
    click_on "New member"

    fill_in "Date of birth", with: @member.date_of_birth
    fill_in "Library", with: @member.library_id
    fill_in "Memberid", with: @member.memberid
    fill_in "Membership status", with: @member.membership_status
    fill_in "Name", with: @member.name
    fill_in "Phone", with: @member.phone
    click_on "Create Member"

    assert_text "Member was successfully created"
    click_on "Back"
  end

  test "should update Member" do
    visit member_url(@member)
    click_on "Edit this member", match: :first

    fill_in "Date of birth", with: @member.date_of_birth
    fill_in "Library", with: @member.library_id
    fill_in "Memberid", with: @member.memberid
    fill_in "Membership status", with: @member.membership_status
    fill_in "Name", with: @member.name
    fill_in "Phone", with: @member.phone
    click_on "Update Member"

    assert_text "Member was successfully updated"
    click_on "Back"
  end

  test "should destroy Member" do
    visit member_url(@member)
    click_on "Destroy this member", match: :first

    assert_text "Member was successfully destroyed"
  end
end

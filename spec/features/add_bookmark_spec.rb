require './spec_helper'

feature 'Add new bookmarks' do
  scenario 'user adds a new bookmarks' do
    visit('/bookmarks/add')
    fill_in('url', with: 'http://testbookmark.com')
    fill_in('title', with: 'TestTitle')
    click_button('Submit')

    expect(page).to have_link('TestTitle', href: 'http://testbookmark.com')
  end
end

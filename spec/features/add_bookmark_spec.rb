require './spec_helper'

feature 'Add new bookmarks' do
  scenario 'user adds a new bookmarks' do
    visit('/bookmarks/add')
    fill_in('url', with: 'http://github.com')
    click_button('Submit')
    expect(page).to have_content 'http://github.com'
  end
end

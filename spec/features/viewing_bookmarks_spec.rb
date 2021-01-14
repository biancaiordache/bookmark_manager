require 'pg'
require 'spec_helper'

feature 'Viewing bookmarks' do
  scenario 'A user can see bookmarks' do
    connection = PG.connect(dbname: 'bookmark_manager_test')

    Bookmark.create(url: 'http://makersacademy.com')
    Bookmark.create(url: 'http://ruby-doc.org')
    Bookmark.create(url: 'http://gitimmersion.com')

    visit('/bookmarks')

    expect(page).to have_content 'http://makersacademy.com'
    expect(page).to have_content 'http://ruby-doc.org'
    expect(page).to have_content 'http://gitimmersion.com'
  end
end

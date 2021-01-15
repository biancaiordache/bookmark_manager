require 'pg'
require 'spec_helper'

feature 'Viewing bookmarks' do
  scenario 'A user can see bookmarks' do
    Bookmark.create(url: 'http://makersacademy.com', title: 'Makers Academy')
    Bookmark.create(url: 'http://ruby-doc.org', title: 'Ruby Docs')
    Bookmark.create(url: 'http://gitimmersion.com', title: 'Git Immersion')

    visit('/bookmarks')

    expect(page).to have_link('Makers Academy', href: 'http://makersacademy.com')
    expect(page).to have_link('Ruby Docs', href: 'http://ruby-doc.org')
    expect(page).to have_link('Git Immersion', href: 'http://gitimmersion.com')
  end
end

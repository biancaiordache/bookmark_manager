feature 'Viewing bookmarks' do
  scenario 'visiting the index page' do
    visit('/')
    expect(page).to have_content 'Bookmark Manager'
  end

  scenario 'see list of bookmarks' do
    visit('/bookmarks')
    expect(page).to have_content 'http://makersacademy.com'
    expect(page).to have_content 'http://ruby-doc.org'
    expect(page).to have_content 'http://gitimmersion.com'
  end
end

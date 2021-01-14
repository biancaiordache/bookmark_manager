require 'pg'

feature 'Viewing bookmarks' do
  scenario 'A user can see bookmarks' do
    connection = PG.connect(dbname: 'bookmark_manager_test')

    connection.exec("INSERT INTO bookmarks VALUES(1, 'http://makersacademy.com');")
    connection.exec("INSERT INTO bookmarks VALUES(2, 'http://ruby-doc.org');")
    connection.exec("INSERT INTO bookmarks VALUES(3, 'http://gitimmersion.com');")

    visit('/bookmarks')

    expect(page).to have_content 'http://makersacademy.com'
    expect(page).to have_content 'http://ruby-doc.org'
    expect(page).to have_content 'http://gitimmersion.com'
  end
end

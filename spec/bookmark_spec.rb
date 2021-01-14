require 'bookmark'

describe Bookmark do
  describe '.all' do
    it 'returns all bookmarks' do
      connection = PG.connect(dbname: 'bookmark_manager_test')

      connection.exec("INSERT INTO bookmarks (url) VALUES ('http://makersacademy.com');")
      connection.exec("INSERT INTO bookmarks (url) VALUES ('http://ruby-doc.org');")
      connection.exec("INSERT INTO bookmarks (url) VALUES ('http://gitimmersion.com');")

      bookmarks = Bookmark.all

      expect(bookmarks).to include('http://makersacademy.com')
      expect(bookmarks).to include('http://ruby-doc.org')
      expect(bookmarks).to include('http://gitimmersion.com')
    end
  end
end

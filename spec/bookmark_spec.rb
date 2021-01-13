require 'bookmark'

describe Bookmark do
  describe '.all' do
    it 'returns all bookmarks' do
      bookmarks = Bookmark.all

      expect(bookmarks).to include('http://makersacademy.com')
      expect(bookmarks).to include('https://ruby-doc.org')
      expect(bookmarks).to include('https://gitimmersion.com')
    end
  end
end

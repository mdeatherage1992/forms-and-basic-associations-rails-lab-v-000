class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre
  has_many :notes

  def artist_name=(name)
  artist = Artist.find_or_create_by(name: name)
  self.artist = artist
end

def artist_name
   self.try(:artist).try(:name)
end

def genre_name=(name)
genre = Genre.find_or_create_by(name: name)
self.genre = genre
end

def genre_name
 self.try(:genre).try(:name)
end

def note_contents=(notes)
notes.each do |content|
  if content.strip != ""
    self.notes.build(content: content)
  end
end
end

def note_contents
 self.notes.map(&:content)
  self.artist_name = Artist.find_or_create_by(name: name)
end

def category_name
   self.artist ? self.artist.name : nil
end

def genre_name=(name)
self.genre_name = Genre.find_or_create_by(name: name)
end

def genre_name
 self.genre ? self.genre.name : nil
end

def note_contents=(content)
self.note_contents = Note.find_or_create_by(content: content)
end

def note_contents
 self.note ? self.note.content : nil
>>>>>>> 3ca645d4124ebaeb60bfa44f63afaeafdedb5f9c
end


end

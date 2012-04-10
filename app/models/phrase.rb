class Phrase
  include DataMapper::Resource

  # property <name>, <type>
  property :id, Serial
  property :content, Text
end

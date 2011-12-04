class Book < ActiveRecord::Base
  validates_presence_of :title, :author

  before_save :normalize_title

  private
  def normalize_title
    puts self.inspect
    self.title.gsub!(/\s+/, ' ')
    self.title.strip!
    self.title.capitalize!
  end
end

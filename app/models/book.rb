class Book < ActiveRecord::Base
  validates_presence_of :title, :author

  before_save :normalize_title

  private
  def normalize_title
    self.title.gsub!(/\s+/, ' ').strip!.capitalize!
  end
end

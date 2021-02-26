class Blog < ApplicationRecord
  belongs_to :author


  #this can work from the name validation in author model
  def author_attributes=(author_name)
    self.author = Author.find_or_create_by(name: author_name)
  end
end

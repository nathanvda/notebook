class Book < ActiveRecord::Base
  has_many :notes
  belongs_to :user

  def slug
    title.downcase.dasherize
  end
end

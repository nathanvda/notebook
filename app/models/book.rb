class Book < ActiveRecord::Base
  has_many :notes, :order => 'created_at desc'
  belongs_to :user

  after_create :add_first_note

  scope :from_user, lambda{ |user| where(:user_id => user.id) }

  def slug
    title.downcase.parameterize
  end

  protected

  def add_first_note
    self.notes.create
  end

end

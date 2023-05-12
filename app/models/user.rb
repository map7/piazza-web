class User < ApplicationRecord
  include Authentication

  has_many :memberships, dependent: :destroy
  has_many :organisations, :through => :memberships

  validates :name, presence: true
  validates :email,
    format: {with: URI::MailTo::EMAIL_REGEXP},
    uniqueness: {case_sensitive: false}

  before_validation :strip_extraneous_spaces

  private

  def strip_extraneous_spaces
    self.name = self.name&.strip # The & is like a 'try' command which stops errors on nil object
    self.email = self.email&.strip
  end
end

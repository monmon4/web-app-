class Slide < ActiveRecord::Base
  belongs_to :pdf_file
  has_many :comment, dependent: :destroy
  has_many :likes
end

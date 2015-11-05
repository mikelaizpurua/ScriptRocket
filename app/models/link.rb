####This section is our script model. The validates_attachment_content_type is for PAPERCLIP

class Link < ActiveRecord::Base
	acts_as_votable
	belongs_to :user
	has_many :comments
    has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100" }
    validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif", "application/pdf"]

end


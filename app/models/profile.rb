class Profile < ActiveRecord::Base
  acts_as_taggable
  belongs_to :user
  has_attached_file :profile_image, :styles => { :medium => "300x300>", :thumb => "60x60>" }
      validates_attachment_content_type :profile_image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
end

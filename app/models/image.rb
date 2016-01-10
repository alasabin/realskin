class Image < ActiveRecord::Base
  belongs_to :product
  mount_uploader :avatar, AvatarUploader

  def get_image
    self.avatar_identifier
  end
end

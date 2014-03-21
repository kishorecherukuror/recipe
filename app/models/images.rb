class Images < ActiveRecord::Base

    mount_uploader :image, ImageUploader

end

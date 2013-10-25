class User < ActiveRecord::Base
  has_attached_file :avatar , :path =>"#{Rails.root}/ROR",:url =>




  #00, :styles => {:small => "150*150>"}

  #validates_attachment_presence :avatar
  #validates_attachment_size :avatar , :less_than =>5.kilobytes
  #validates_attachment_content_type :avatar , :content_type => ['image/jpeg','image/png']
 #http://www.eizesus.com/2009/04/paperclip-custom-storage-path/

end

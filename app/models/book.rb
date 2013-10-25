class Book < ActiveRecord::Base
  has_attached_file :avatar, :url => "/ROR/system/:class/:attachment/:id/:style/:basename.:extension",
                    :path => "#{Rails.root}/ROR/system/:class/:attachment/:id/:style/:basename.:extension"
end

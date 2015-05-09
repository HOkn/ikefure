class Face < ActiveRecord::Base
  belongs_to :user
  belongs_to :raw
end

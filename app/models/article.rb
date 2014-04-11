class Article < ActiveRecord::Base
	has_many :comments, dependent: :destroy
  	validates :title, presence: true
    def self.search( search )
	    where("text like ?", "%#{search}%")
	end
end

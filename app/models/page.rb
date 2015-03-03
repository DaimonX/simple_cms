class Page < ActiveRecord::Base

	belongs_to :subject
	has_and_belongs_to_many :editors, :class_name => "AdminUser"
	
	validates_presence_of :name
	validates :subject, :presence => true


end

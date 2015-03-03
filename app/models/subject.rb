class Subject < ActiveRecord::Base

has_many :pages

# validates_presence_of :name, message: "Имя не может быть пустым"
# validates_length_of :name, maximum: 255
# same as:

validates :name, presence: { message: "Имя не может быть пустым" },
				 length: { maximum: 25}

scope :visible, lambda { where(visible: true) }
scope :invisible, lambda { where(visible: false) }
scope :sorted, lambda { order("subjects.position ASC") }
scope :newest_first, lambda { order("subjects.created_at DESC") }
scope :search, lambda {|query|
	where(["name LIKE ?", "%#{query}%"])
}


end

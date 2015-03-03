class AdminUser < ActiveRecord::Base
	# To configure a different table name:
	# self.table_name = "admin_users"

	# #short way
	# attr_accessor :first_name

	# #long way
	# def last_name
	# 	@last_name
	# end

	# def last_name=(value)
	# 	@last_name = value
	has_secure_password

	has_and_belongs_to_many :pages
	has_many :section_edits
	has_many :sections, :through => :section_edits

	FORBIDDEN_USERNAMES = ['littlebopeep', 'humptydumpty','mary']


	# custom validations:
	validate :username_is_allowed
	#validate :no_new_users_on_tuesday, on: :create

	def username_is_allowed
		if FORBIDDEN_USERNAMES.include?(username)
			errors.add(:username, "has been rextricted")
		end
	end

	def no_new_users_on_tuesday
		if Time.now.wday == 2
			errors[:base] << "New users restricted on Tuesdays"
		end
	end





end

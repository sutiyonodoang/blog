class AdminUser < ActiveRecord::Base

	# untuk mengkonfigurasi nama table yang berbeda dengan nama file dan class
	# set_table_name ("admin_users")

	has_and_belongs_to_many :pages	
	scope :named, lambda {|first,last| where(:first_name => first, :last_name => last)}
	has_many :section_edits

end

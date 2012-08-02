class Section < ActiveRecord::Base

	belongs_to :pages
	has_many :section_edits

end

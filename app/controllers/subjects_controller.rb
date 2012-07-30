class SubjectsController < ApplicationController

	def index
		list
		render('list')	
	end

	def list
		@subjects = Subject.order("subjects.position ASC")
	end

	def show
		@subject = Subject.find(params[:id])
	end

	def new
		@subject = Subject.new(:name => 'default')
	end

	def create
		# Instantiate a new object using form parameters
		@subject = Subject.new(params[:subject])
		# Save the object
		if @subject.save 
			# If save succeeeds, redirect to the list action
			redirect_to(:action => 'list')
		else
			# If save fails, redisplay the form so user can fix the problem
			render('new')
		end
	end

end

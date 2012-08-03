class SectionsController < ApplicationController

	layout 'admin'
	before_filter :ready_section,  :only => [:show, :update, :destroy]

	def index
		list
		render('list')	
	end

	def list
		@sections = Section.order("sections.position ASC")
	end

	def show
		
	end

	def new
		@section = Section.new
		@section_count = Section.count + 1 
	end

	def create
		# Instantiate a new object using form parameters
		@section = Section.new(params[:section])
		# Save the object
		if @section.save 
			# If save succeeds, redirect to the list action
			flash[:notice] =  "Section created."
			redirect_to(:action => 'list')
		else
			# If save fails, redisplay the form so user can fix the problem
			@section_count = Section.count
			render('new')
		end
	end

	def edit
		
		@section_count = Section.count
	end

	def update
		# Find object using form parameters
		#@section = Section.find(params[:id])
		# Update the object
		if @section.update_attributes(params[:section]) 
			# If update succeeds, redirect to the list action
			flash[:notice] = "Section updated."
			redirect_to(:action => 'show', :id => @section.id)
		else
			# If save fails, redisplay the form so user can fix the problem
			@section_count = Section.count
			render('edit')
		end
	end

	def delete
		#@section = Section.find(params[:id])
	end

	def destroy
		# @section = Section.find(params[:id])
		@section.destroy
		#Section.find(params[:id]).destroy
		flash[:notice] = "Section destroyed."
		redirect_to(:action => 'list')		
	end

	private

	def ready_section
		@section = Section.find(params[:id])
	end

end

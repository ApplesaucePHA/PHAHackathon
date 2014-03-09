class TeachersController < ApplicationController

	def new
		@teacher = Teacher.new
	end

	def create
		@teacher= Teacher.new(params[:teacher])    # Not the final implementation!
		if @teacher.save
			redirect_to @teacher
		else
			render 'new'
		end
	end


end

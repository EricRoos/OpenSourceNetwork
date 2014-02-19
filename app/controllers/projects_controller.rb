class ProjectsController < ApplicationController

	def new
		@project = Project.new
		
		respond_to do |format|
			format.html
		end
	end

	def create
		p = Project.new
		p.name = params[:project][:name]
		
		if p.save
			respond_to do |format|
				format.html {redirect_to p}
			end
		else
			render 'new'
		end
	end

	def edit

	end

	def index

	end

	def show
		@project = Project.find(params[:id])
		respond_to do |format|
			format.html
		end
	end

	private
		def project_params
			params.permit(:id,:name)
		end
end

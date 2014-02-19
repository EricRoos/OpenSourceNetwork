class ProjectsController < ApplicationController

	def new

	end

	def create

	end

	def edit

	end

	def index

	end

	def show

	end
	private
		def project_params
			params.require(:project).permit(:id,:name)
		end
end

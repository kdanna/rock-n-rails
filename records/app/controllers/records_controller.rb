class RecordsController < ApplicationController
	def index
		@records = Record.all
  		render :index # optional
	end

	def show
    	@record = Record.find(params[:id])
    	render :show #optional
  	end
end

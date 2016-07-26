class RecordsController < ApplicationController
	def index
		@records = Record.all
  		render :index # optional
	end

	def show
    	@record = Record.find(params[:id])
    	render :show #optional
  	end

 	def new   #receives form data but need the create route to render it
 		@record = Record.new
    	render :new #optional
  	end
	
	def create
	    Record.create(record_params)
	    redirect_to('/records')
	end


  	private
		def record_params
    	params.require(:record).permit(:title, :artist, :year, :cover_art, :song_count)
  	end

end

class CastsController < ApplicationController
	before_action :set_cast, only:[:show, :edit, :update, :destroy]

	def index
		@casts = Cast.all		
	end

	def new
		@cast = Cast.new
	end

	def create
		@cast = Cast.create(cast_params)
		redirect_to @cast
    end

	def show
		@movies_acted = @cast.movies_acted
		@movies_directed = @cast.movies_directed
	end

	def update
    	respond_to do |format|
      		if @cast.update(cast_params)
        		format.html { redirect_to @cast, notice: 'cast was successfully updated.' }
        		format.json { render :show, status: :ok, location: @cast }
      		else
       			format.html { render :edit }
        		format.json { render json: @cast.errors, status: :unprocessable_entity }
      		end
    	end
    end

    def destroy
    @cast.destroy
      respond_to do |format|
      format.html { redirect_to casts_url, notice: 'Topic was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

	private

    def set_cast
    	@cast = Cast.find(params[:id])
    end

    def cast_params
    	params.require(:cast).permit(:name, :birtday, :bio, :avatar)
	end	
end

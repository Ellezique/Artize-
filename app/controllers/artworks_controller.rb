class ArtworksController < ApplicationController 
  #before_action :set_artwork, only: %i[ show edit update destroy ]
  #before_action :check_role, only: [:destroy, :edit, :update] #Admin only access method located in application_controller.rb
  before_action :read_artworks, only: [:index]
  before_action :set_artwork, only: [:show, :destroy, :edit, :update]


  # GET /artworks or /artworks.json
  def index
    #@artworks = Artwork.all
  end

  # GET /artworks/1 or /artworks/1.json
  def show
  end

  # GET /artworks/new
  def new
    @artwork = Artwork.new
  end

  # GET /artworks/1/edit
  def edit
  end

  # POST /artworks or /artworks.json
  def create
    
    @artwork = Artwork.new(artwork_params)
    @artwork.artimage.attach(artwork_params[:artimage]) 
    @artwork.user_id = current_user.id
    respond_to do |format|
      if @artwork.save
        format.html { redirect_to @artwork, notice: "Artwork was successfully created." }
        format.json { render :show, status: :created, location: @artwork }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @artwork.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /artworks/1 or /artworks/1.json
  def update
    @artwork.artimage.attach(artwork_params[:artimage]) if artwork_params.has_key?(:artimage) #the if statement ensures that the artwork data can be updated without destroying an already attached image.
    
    respond_to do |format|
      if @artwork.update(artwork_params)
        format.html { redirect_to @artwork, notice: "Artwork was successfully updated." }
        format.json { render :show, status: :ok, location: @artwork }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @artwork.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /artworks/1 or /artworks/1.json
  def destroy
    @artwork.destroy
    respond_to do |format|
      format.html { redirect_to artworks_url, notice: "Artwork was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    #from index above. Order by artist last name. Groups arworks togethe by artist. Eager_load query takes longer than includes.
    def read_artworks   
      @artworks = Artwork.order("artists.artist_last_name").includes(:artist)
    end

    # Use callbacks to share common setup or constraints between actions.
    def set_artwork
      if params[:id]
        @artwork = Artwork.find(params[:id])
      end
    end

    # Only allow a list of trusted parameters through.
    def artwork_params
      params.require(:artwork).permit(:art_title, :artimage, :price, :art_description, :available, :artist_id, :artmedium_ids => [], :style_ids => [])
    end


end

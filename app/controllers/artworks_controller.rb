class ArtworksController < ApplicationController
  before_action :set_artwork, only: %i[ show edit update destroy ]
  before_action :read_artworks, only: [:index]
  skip_before_action :authenticate_user!
  # GET /artworks or /artworks.json
  def index
    #@artworks = Artwork.all
  end

  # GET /artworks/1 or /artworks/1.json
  def show
  end

  # GET /artworks/new
  def new  #allow if a user > profile > artist data entry has been created.
    @artwork = Artwork.new
  end

  # GET /artworks/1/edit
  def edit
  end

  # POST /artworks or /artworks.json
  def create
    @artwork = Artwork.new(artwork_params)
    #@artwork.artist_id =  @profile.user_id  not sure if this is correct but note that profiles controller we have  @profile.user_id = current_user.id

    respond_to do |format|
      if @artwork.save
        format.html { redirect_to @artwork, notice: "Artwork was successfully created." }
        format.json { render :show, status: :created, location: @artwork }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @artwork.errors, status: :unprocessable_entity }
      end
    end
    #Upload image to cloudinary and attach to artwork.Image permitted in params below.
    artwork.artimage.attach(artwork_params[:artimage])
  end

  # PATCH/PUT /artworks/1 or /artworks/1.json
  def update
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
    def read_artworks
      @artworks = Artwork.all
    end
    # Use callbacks to share common setup or constraints between actions.
    def set_artwork
      @artwork = Artwork.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def artwork_params
      params.require(:artwork).permit(:art_title, :artimage, :art_description, :art_price, :available, :orderitem_id, :artist_id, :style_id, :artmedium_id)
    end
end

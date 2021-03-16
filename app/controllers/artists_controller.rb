class ArtistsController < ApplicationController
  before_action :set_artist, only: %i[ show edit update destroy ]
  before_action :read_artists, only: [:index]

  # GET /artists or /artists.json
  def index
    # @artists = Artist.all   moved to privet read_index method below
  end

  # GET /artists/1 or /artists/1.json
  def show
  end

  # GET /artists/new
  def new
    @artist = Artist.new
  end

  # GET /artists/1/edit
  def edit
  end

  # POST /artists or /artists.json
  def create
    #set artist to current user via profiles table. 
   #@artist.profile.user_id = current_user.id  

    @artist = Artist.new(artist_params)
    respond_to do |format|
      if @artist.save
        format.html { redirect_to @artist, notice: "Artist was successfully created." }
        format.json { render :show, status: :created, location: @artist }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @artist.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /artists/1 or /artists/1.json
  def update
    respond_to do |format|
      if @artist.update(artist_params)
        format.html { redirect_to @artist, notice: "Artist was successfully updated." }
        format.json { render :show, status: :ok, location: @artist }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @artist.errors, status: :unprocessable_entity }
      end
    end
  end


  # DELETE /artists/1 or /artists/1.json
  def destroy
    @artist.destroy    #will destroy all of their artwork as well, due to table associations
    respond_to do |format|
      format.html { redirect_to artists_url, notice: "Artist was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    def read_artists
      @artists = Artist.all
    end
  
  # Use callbacks to share common setup or constraints between actions.
    def set_artist
      if params[:id]
        @artist = Artist.find(params[:id])
      end
    end

    # Only allow a list of trusted parameters through.
    def artist_params
      params.require(:artist).permit(:about_artist, :profile_id, :artist_name)
    end
end

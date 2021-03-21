class ArtmediaController < ApplicationController
  before_action :set_artmedium, only: %i[ show edit update destroy ]

  # GET /artmedia or /artmedia.json
  def index
    @artmedia = Artmedium.all
  end

  # GET /artmedia/1 or /artmedia/1.json
  def show
  end

  # GET /artmedia/new
  def new
    @artmedium = Artmedium.new
  end

  # GET /artmedia/1/edit
  def edit
  end

  # POST /artmedia or /artmedia.json
  def create
    @artmedium = Artmedium.new(artmedium_params)

    respond_to do |format|
      if @artmedium.save
        format.html { redirect_to @artmedium, notice: "Artmedium was successfully created." }
        format.json { render :show, status: :created, location: @artmedium }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @artmedium.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /artmedia/1 or /artmedia/1.json
  def update
    respond_to do |format|
      if @artmedium.update(artmedium_params)
        format.html { redirect_to @artmedium, notice: "Artmedium was successfully updated." }
        format.json { render :show, status: :ok, location: @artmedium }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @artmedium.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /artmedia/1 or /artmedia/1.json
  def destroy
    @artmedium.destroy
    respond_to do |format|
      format.html { redirect_to artmedia_url, notice: "Artmedium was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_artmedium
      @artmedium = Artmedium.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def artmedium_params
      params.require(:artmedium).permit(:artmedium)
    end
end

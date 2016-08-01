class RockhoundsController < ApplicationController
  before_action :set_rockhound, only: [:show, :edit, :update, :destroy]

  # GET /rockhounds
  # GET /rockhounds.json
  def index
    @rockhounds = Rockhound.all
  end

  # GET /rockhounds/1
  # GET /rockhounds/1.json
  def show
    @rockhound = Rockhound.find(params[:id])
  end

  # GET /rockhounds/new
  def new
    @rockhound = Rockhound.new
  end

  # GET /rockhounds/1/edit
  def edit
  end

  # POST /rockhounds
  # POST /rockhounds.json
  def create
    @rockhound = Rockhound.new(rockhound_params)

    respond_to do |format|
      if @rockhound.save
        format.html { redirect_to @rockhound, notice: 'Rockhound was successfully created.' }
        format.json { render :show, status: :created, location: @rockhound }
      else
        format.html { render :new }
        format.json { render json: @rockhound.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rockhounds/1
  # PATCH/PUT /rockhounds/1.json
  def update
    respond_to do |format|
      if @rockhound.update(rockhound_params)
        format.html { redirect_to @rockhound, notice: 'Rockhound was successfully updated.' }
        format.json { render :show, status: :ok, location: @rockhound }
      else
        format.html { render :edit }
        format.json { render json: @rockhound.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rockhounds/1
  # DELETE /rockhounds/1.json
  def destroy
    @rockhound.destroy
    respond_to do |format|
      format.html { redirect_to rockhounds_url, notice: 'Rockhound was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rockhound
      @rockhound = Rockhound.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rockhound_params
      params.require(:rockhound).permit(:name, :email, :password, :password_confirmation)
    end
end

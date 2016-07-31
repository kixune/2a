class BijousController < ApplicationController
  before_action :set_bijou, only: [:show, :edit, :update, :destroy]

  # GET /bijous
  # GET /bijous.json
  def index
    @bijous = Bijou.all
  end

  # GET /bijous/1
  # GET /bijous/1.json
  def show
  end

  # GET /bijous/new
  def new
    @bijou = Bijou.new
  end

  # GET /bijous/1/edit
  def edit
  end

  # POST /bijous
  # POST /bijous.json
  def create
    @bijou = Bijou.new(bijou_params)

    respond_to do |format|
      if @bijou.save
        format.html { redirect_to @bijou, notice: 'Bijou was successfully created.' }
        format.json { render :show, status: :created, location: @bijou }
      else
        format.html { render :new }
        format.json { render json: @bijou.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bijous/1
  # PATCH/PUT /bijous/1.json
  def update
    respond_to do |format|
      if @bijou.update(bijou_params)
        format.html { redirect_to @bijou, notice: 'Bijou was successfully updated.' }
        format.json { render :show, status: :ok, location: @bijou }
      else
        format.html { render :edit }
        format.json { render json: @bijou.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bijous/1
  # DELETE /bijous/1.json
  def destroy
    @bijou.destroy
    respond_to do |format|
      format.html { redirect_to bijous_url, notice: 'Bijou was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bijou
      @bijou = Bijou.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bijou_params
      params.require(:bijou).permit(:name, :description)
    end
end

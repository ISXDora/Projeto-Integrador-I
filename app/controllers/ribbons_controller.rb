class RibbonsController < ApplicationController
  before_action :set_ribbon, only: %i[ show edit update destroy ]

  # GET /ribbons or /ribbons.json
  def index
    @ribbons = Ribbon.all
  end

  # GET /ribbons/1 or /ribbons/1.json
  def show
  end

  # GET /ribbons/new
  def new
    @ribbon = Ribbon.new
  end

  # GET /ribbons/1/edit
  def edit
  end

  # POST /ribbons or /ribbons.json
  def create
    @ribbon = Ribbon.new(ribbon_params)

    respond_to do |format|
      if @ribbon.save
        format.html { redirect_to @ribbon, notice: "Ribbon was successfully created." }
        format.json { render :show, status: :created, location: @ribbon }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @ribbon.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ribbons/1 or /ribbons/1.json
  def update
    respond_to do |format|
      if @ribbon.update(ribbon_params)
        format.html { redirect_to @ribbon, notice: "Ribbon was successfully updated." }
        format.json { render :show, status: :ok, location: @ribbon }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @ribbon.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ribbons/1 or /ribbons/1.json
  def destroy
    @ribbon.destroy
    respond_to do |format|
      format.html { redirect_to ribbons_url, notice: "Ribbon was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ribbon
      @ribbon = Ribbon.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def ribbon_params
      params.require(:ribbon).permit(:film_id, :id)
    end
end

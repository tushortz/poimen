class ShepherdsController < ApplicationController
  before_action :set_shepherd, only: [:show, :edit, :update, :destroy]

  # GET /shepherds
  # GET /shepherds.json
  def index
    @shepherds = Shepherd.all
  end

  # GET /shepherds/1
  # GET /shepherds/1.json
  def show
  end

  # GET /shepherds/new
  def new
    @shepherd = Shepherd.new
  end

  # GET /shepherds/1/edit
  def edit
  end

  # POST /shepherds
  # POST /shepherds.json
  def create
    @shepherd = Shepherd.new(shepherd_params)

    respond_to do |format|
      if @shepherd.save
        format.html { redirect_to @shepherd, notice: 'Shepherd was successfully created.' }
        format.json { render :show, status: :created, location: @shepherd }
      else
        format.html { render :new }
        format.json { render json: @shepherd.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /shepherds/1
  # PATCH/PUT /shepherds/1.json
  def update
    respond_to do |format|
      if @shepherd.update(shepherd_params)
        format.html { redirect_to @shepherd, notice: 'Shepherd was successfully updated.' }
        format.json { render :show, status: :ok, location: @shepherd }
      else
        format.html { render :edit }
        format.json { render json: @shepherd.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shepherds/1
  # DELETE /shepherds/1.json
  def destroy
    @shepherd.destroy
    respond_to do |format|
      format.html { redirect_to shepherds_url, notice: 'Shepherd was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shepherd
      @shepherd = Shepherd.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def shepherd_params
      params.require(:shepherd).permit(:first_name, :last_name)
    end
end

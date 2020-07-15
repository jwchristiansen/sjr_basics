class DinosaursController < ApplicationController
  before_action :set_dinosaur, only: [:show, :edit, :update, :destroy]

  # GET /dinosaurs
  def index
    @dinosaurs = Dinosaur.all
		@dinosaur = Dinosaur.new
  end

  # GET /dinosaurs/1
  def show
  end

  # GET /dinosaurs/new
  def new
    @dinosaur = Dinosaur.new
  end

  # GET /dinosaurs/1/edit
  def edit
  end

  # POST /dinosaurs
  def create
		@dinosaurs = Dinosaur.all
    @dinosaur = Dinosaur.new(dinosaur_params)

    if @dinosaur.save
      redirect_to dinosaurs_path, notice: 'Dinosaur was successfully created.' 
		else 
			render :index
    end
  end

  # PATCH/PUT /dinosaurs/1
  def update
    if @dinosaur.update(dinosaur_params)
      redirect_to @dinosaur, notice: 'Dinosaur was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /dinosaurs/1
  def destroy
    @dinosaur.destroy
    redirect_to dinosaurs_url, notice: 'Dinosaur was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dinosaur
      @dinosaur = Dinosaur.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def dinosaur_params
      params.require(:dinosaur).permit(:name)
    end
end

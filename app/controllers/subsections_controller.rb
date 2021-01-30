class SubsectionsController < ApplicationController
  before_action :set_subsection, only: [:show, :edit, :update, :destroy]

  # GET /subsections
  def index
    @subsections = Subsection.all
  end

  # GET /subsections/1
  def show
  end

  # GET /subsections/new
  def new
    @subsection = Subsection.new
  end

  # GET /subsections/1/edit
  def edit
  end

  # POST /subsections
  def create
    @subsection = Subsection.new(subsection_params)

    if @subsection.save
      redirect_to settings_url, notice: 'Подсекция создана.'
    else
      redirect_to settings_url, alert: 'Что-то пошло не так'
    end
  end

  # PATCH/PUT /subsections/1
  def update
    if @subsection.update(subsection_params)
      redirect_to @subsection, notice: 'Subsection was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /subsections/1
  def destroy
    @subsection.destroy
    redirect_to settings_url, notice: 'Подсекция удалена.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_subsection
      @subsection = Subsection.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def subsection_params
      params.require(:subsection).permit(:title, :global_section_id)
    end
end

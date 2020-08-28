class GlobalSectionsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_global_section, only: [:show, :edit, :update, :destroy]

  # GET /global_sections
  def index
    @global_sections = current_user.global_sections.all
  end

  # GET /global_sections/1
  def show
  end

  # GET /global_sections/new
  def new
    @global_section = GlobalSection.new
  end

  # GET /global_sections/1/edit
  def edit
  end

  # POST /global_sections
  def create
    @global_section = GlobalSection.new(global_section_params)

    if @global_section.save
      redirect_to @global_section, notice: 'Global section was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /global_sections/1
  def update
    if @global_section.update(global_section_params)
      redirect_to @global_section, notice: 'Global section was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /global_sections/1
  def destroy
    @global_section.destroy
    redirect_to global_sections_url, notice: 'Global section was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_global_section
      @global_section = GlobalSection.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def global_section_params
      params.require(:global_section).permit(:title, :schedule_id)
    end
end

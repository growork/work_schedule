class LocalSectionsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_local_section, only: [:show, :edit, :update, :destroy]

  # GET /local_sections
  def index
    @local_sections = LocalSection.all
  end

  # GET /local_sections/1
  def show
  end

  # GET /local_sections/new
  def new
    @local_section = LocalSection.new
  end

  # GET /local_sections/1/edit
  def edit
  end

  # POST /local_sections
  def create
    @local_section = LocalSection.new(local_section_params)

    if @local_section.save
      redirect_to @local_section, notice: 'Local section was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /local_sections/1
  def update
    if @local_section.update(local_section_params)
      redirect_to @local_section, notice: 'Local section was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /local_sections/1
  def destroy
    @local_section.destroy
    redirect_to local_sections_url, notice: 'Local section was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_local_section
      @local_section = LocalSection.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def local_section_params
      params.require(:local_section).permit(:title, :gloabal_section_id)
    end
end

class GlobalSectionsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_global_section, only: [:edit, :update, :destroy]


  # GET /global_sections/1/edit
  def edit
    respond_to do |format|
      format.html { render partial: 'edit_global_section_form'}
    end
  end

  # POST /global_sections
  def create
    @new_global_section = GlobalSection.new(title: global_section_params[:title], user_id: current_user.id)

    if @new_global_section.save
      redirect_to :settings, notice: 'Сохранено.'
    else
      redirect_to :settings, alert: 'Что-то пошло не так...'
    end
  end

  # PATCH/PUT /global_sections/1
  def update
    if @global_section.update(global_section_params)
      redirect_to :settings, notice: 'Сохранено.'
    else
      render :edit
    end
  end

  # DELETE /global_sections/1
  def destroy
    @global_section.destroy
    redirect_to :settings, notice: 'Секция удалена.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_global_section
      @global_section = GlobalSection.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def global_section_params
      params.require(:global_section).permit(:title, :id)
    end
end

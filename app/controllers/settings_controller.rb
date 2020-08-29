class SettingsController < ApplicationController
  before_action :authenticate_user!

  def index
    @global_sections = current_user.global_sections
    @new_global_section = GlobalSection.new
  end
end
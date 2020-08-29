class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_current_user, except: [:show]




  # GET /users/1
  def show
    @user = User.find(current_user.id)
  end

   # GET /users/1/edit
  def edit
  end

   # PATCH/PUT /users/1
  def update
    if @user.update(user_params)
      redirect_to @user, notice: 'Пользователь успешно обновлён.'
    else
      render :edit
    end
  end

  # DELETE /users/1
  def destroy
    @user.destroy
    redirect_to users_url, notice: 'Пользователь успешно удалён.'
  end

  private

  def set_current_user
    @user = current_user
  end
    # Only allow a trusted parameter "white list" through.
    def user_params
      params.require(:user).permit(:name, :service_number, :department)
    end
end

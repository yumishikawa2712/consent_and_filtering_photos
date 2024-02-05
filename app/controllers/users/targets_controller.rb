class Users::TargetsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_target, only: [:show, :edit, :update, :destroy]

  def index
    @targets = Target.all
  end

  def new
    @target = Target.new
  end

  def create
    @target = Target.new(target_params)
    if @target.save
      redirect_to users_targets_url
    else
      render :new
    end
  end

  def show; end

  def edit; end

  def update
    if @target.update(target_params)
      redirect_to users_targets_url, notice: 'Target was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @target.destroy
    redirect_to users_targets_url, notice: 'Target was successfully destroyed.'
  end

  private

  def set_target
    @target = Target.find(params[:id])
  end

  def target_params
    params.require(:target).permit(:name, :photo_consent)
  end

end

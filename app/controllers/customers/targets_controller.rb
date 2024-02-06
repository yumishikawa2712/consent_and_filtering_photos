class Customers::TargetsController < ApplicationController
  before_action :authenticate_custmer!
  before_action :set_target, only: [:show, :edit, :update, :destroy]

  def index
    @targets = current_customer.targets
  end

  def new
    @target = current_customer.target.build
  end

  def create
    @target = current_customer.targets.build(target_params)
    if @target.photo_consent == false
      3.times do
        @target.photos.build
      end
    end

    if @target.save
      redirect_to customers_targets_url
    else
      render :new
    end
  end

  def show; end

  def edit; end

  def update
    if @target.update(target_params)
      redirect_to customers_targets_url, notice: 'Target was successfully updated.'
    else
      render :edit
    end
  end

  def destroy; end

  private

  def set_target
    @target = current_customer.targets.find(params[:id])
  end


  def target_params
    params.require(:target).permit(:name, :consent, face_photos_attributes: [:id, { images: [] }, :_destroy])
  end
end

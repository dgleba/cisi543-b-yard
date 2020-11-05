class PointsController < ApplicationController
before_action :authenticate_user!

  #cancancan
  load_and_authorize_resource
  # before_action :set_point, only: [:show, :edit, :update, :destroy]

  #cancancan
  load_and_authorize_resource

  #cancancan
  load_and_authorize_resource


  # cancancan..
  #load_and_authorize_resource :point

  # GET /points
  def index
    @q = @points.search params[:q]
    @points = @q.result.page(params[:page])
  end

  # GET /points/1
  def show
  end

  # GET /points/new
  def new
  end

  # GET /points/1/edit
  def edit
  end

  # POST /points
  def create
    respond_to do |format|
      if @point.save
        format.html { redirect_to @point, notice: t('success_create') }
        format.json { render :show, status: :created, location: @point }
      else
        format.html { render :new }
        format.json { render json: @point.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /points/1
  def update
    respond_to do |format|
      if @point.update(point_params)
        format.html { redirect_to @point, notice: t('success_update') }
        format.json { render :show, status: :ok, location: @point }
      else
        format.html { render :edit }
        format.json { render json: @point.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /points/1
  def destroy
    @point.destroy
    respond_to do |format|
      format.html { redirect_to points_url, notice: t('success_destroy') }
      format.json { head :no_content }
    end
  end

  private

  # Only allow a trusted parameter "white list" through.
  def point_params
    params.require(:point).permit(:item_claimed, :comment, :user_id, :points_spent, :sort_order, :active_status)
  end
end

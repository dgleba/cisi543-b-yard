class PointsBalancesController < ApplicationController
before_action :authenticate_user!

  #cancancan
  load_and_authorize_resource
  # before_action :set_points_balance, only: [:show, :edit, :update, :destroy]

  #cancancan
  load_and_authorize_resource

  #cancancan
  load_and_authorize_resource


  # cancancan..
  #load_and_authorize_resource :points_balance

  # GET /points_balances
  def index
    @q = @points_balances.search params[:q]
    @points_balances = @q.result.page(params[:page])
  end

  # GET /points_balances/1
  def show
  end

  # GET /points_balances/new
  def new
  end

  # GET /points_balances/1/edit
  def edit
  end

  # POST /points_balances
  def create
    respond_to do |format|
      if @points_balance.save
        format.html { redirect_to @points_balance, notice: t('success_create') }
        format.json { render :show, status: :created, location: @points_balance }
      else
        format.html { render :new }
        format.json { render json: @points_balance.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /points_balances/1
  def update
    respond_to do |format|
      if @points_balance.update(points_balance_params)
        format.html { redirect_to @points_balance, notice: t('success_update') }
        format.json { render :show, status: :ok, location: @points_balance }
      else
        format.html { render :edit }
        format.json { render json: @points_balance.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /points_balances/1
  def destroy
    @points_balance.destroy
    respond_to do |format|
      format.html { redirect_to points_balances_url, notice: t('success_destroy') }
      format.json { head :no_content }
    end
  end

  private

  # Only allow a trusted parameter "white list" through.
  def points_balance_params
    params.require(:points_balance).permit(:user_id, :clocknum, :name, :first_name, :last_name, :sum_points_awarded, :sum_points_spent, :points_balance)
  end
end

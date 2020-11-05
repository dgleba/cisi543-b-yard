class BenefitsController < ApplicationController
before_action :authenticate_user!

  #cancancan
  load_and_authorize_resource
  # before_action :set_benefit, only: [:show, :edit, :update, :destroy]

  #cancancan
  load_and_authorize_resource

  #cancancan
  load_and_authorize_resource


  # cancancan..
  #load_and_authorize_resource :benefit

  # GET /benefits
  def index
    @q = @benefits.search params[:q]
    @benefits = @q.result.page(params[:page])
  end

  # GET /benefits/1
  def show
  end

  # GET /benefits/new
  def new
  end

  # GET /benefits/1/edit
  def edit
  end

  # POST /benefits
  def create
    respond_to do |format|
      if @benefit.save
        format.html { redirect_to @benefit, notice: t('success_create') }
        format.json { render :show, status: :created, location: @benefit }
      else
        format.html { render :new }
        format.json { render json: @benefit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /benefits/1
  def update
    respond_to do |format|
      if @benefit.update(benefit_params)
        format.html { redirect_to @benefit, notice: t('success_update') }
        format.json { render :show, status: :ok, location: @benefit }
      else
        format.html { render :edit }
        format.json { render json: @benefit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /benefits/1
  def destroy
    @benefit.destroy
    respond_to do |format|
      format.html { redirect_to benefits_url, notice: t('success_destroy') }
      format.json { head :no_content }
    end
  end

  private

  # Only allow a trusted parameter "white list" through.
  def benefit_params
    params.require(:benefit).permit(:name, :sort_order, :active_status, :comment)
  end
end

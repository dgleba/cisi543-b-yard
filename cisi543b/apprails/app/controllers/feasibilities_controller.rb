class FeasibilitiesController < ApplicationController
before_action :authenticate_user!

  #cancancan
  load_and_authorize_resource
  # before_action :set_feasibility, only: [:show, :edit, :update, :destroy]

  #cancancan
  load_and_authorize_resource

  #cancancan
  load_and_authorize_resource


  # cancancan..
  #load_and_authorize_resource :feasibility

  # GET /feasibilities
  def index
    @q = @feasibilities.search params[:q]
    @feasibilities = @q.result.page(params[:page])
  end

  # GET /feasibilities/1
  def show
  end

  # GET /feasibilities/new
  def new
  end

  # GET /feasibilities/1/edit
  def edit
  end

  # POST /feasibilities
  def create
    respond_to do |format|
      if @feasibility.save
        format.html { redirect_to @feasibility, notice: t('success_create') }
        format.json { render :show, status: :created, location: @feasibility }
      else
        format.html { render :new }
        format.json { render json: @feasibility.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /feasibilities/1
  def update
    respond_to do |format|
      if @feasibility.update(feasibility_params)
        format.html { redirect_to @feasibility, notice: t('success_update') }
        format.json { render :show, status: :ok, location: @feasibility }
      else
        format.html { render :edit }
        format.json { render json: @feasibility.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /feasibilities/1
  def destroy
    @feasibility.destroy
    respond_to do |format|
      format.html { redirect_to feasibilities_url, notice: t('success_destroy') }
      format.json { head :no_content }
    end
  end

  private

  # Only allow a trusted parameter "white list" through.
  def feasibility_params
    params.require(:feasibility).permit(:name, :sort_order, :active_status, :comment)
  end
end

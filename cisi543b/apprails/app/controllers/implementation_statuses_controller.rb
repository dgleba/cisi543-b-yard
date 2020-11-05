class ImplementationStatusesController < ApplicationController
before_action :authenticate_user!

  #cancancan
  load_and_authorize_resource
  # before_action :set_implementation_status, only: [:show, :edit, :update, :destroy]

  #cancancan
  load_and_authorize_resource

  #cancancan
  load_and_authorize_resource


  # cancancan..
  #load_and_authorize_resource :implementation_status

  # GET /implementation_statuses
  def index
    @q = @implementation_statuses.search params[:q]
    @implementation_statuses = @q.result.page(params[:page])
  end

  # GET /implementation_statuses/1
  def show
  end

  # GET /implementation_statuses/new
  def new
  end

  # GET /implementation_statuses/1/edit
  def edit
  end

  # POST /implementation_statuses
  def create
    respond_to do |format|
      if @implementation_status.save
        format.html { redirect_to @implementation_status, notice: t('success_create') }
        format.json { render :show, status: :created, location: @implementation_status }
      else
        format.html { render :new }
        format.json { render json: @implementation_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /implementation_statuses/1
  def update
    respond_to do |format|
      if @implementation_status.update(implementation_status_params)
        format.html { redirect_to @implementation_status, notice: t('success_update') }
        format.json { render :show, status: :ok, location: @implementation_status }
      else
        format.html { render :edit }
        format.json { render json: @implementation_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /implementation_statuses/1
  def destroy
    @implementation_status.destroy
    respond_to do |format|
      format.html { redirect_to implementation_statuses_url, notice: t('success_destroy') }
      format.json { head :no_content }
    end
  end

  private

  # Only allow a trusted parameter "white list" through.
  def implementation_status_params
    params.require(:implementation_status).permit(:name, :sort_order, :active_status, :comment)
  end
end

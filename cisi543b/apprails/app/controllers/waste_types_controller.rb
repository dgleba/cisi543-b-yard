class WasteTypesController < ApplicationController
before_action :authenticate_user!

  #cancancan
  load_and_authorize_resource
  # before_action :set_waste_type, only: [:show, :edit, :update, :destroy]

  #cancancan
  load_and_authorize_resource

  #cancancan
  load_and_authorize_resource


  # cancancan..
  #load_and_authorize_resource :waste_type

  # GET /waste_types
  def index
    @q = @waste_types.search params[:q]
    @waste_types = @q.result.page(params[:page])
  end

  # GET /waste_types/1
  def show
  end

  # GET /waste_types/new
  def new
  end

  # GET /waste_types/1/edit
  def edit
  end

  # POST /waste_types
  def create
    respond_to do |format|
      if @waste_type.save
        format.html { redirect_to @waste_type, notice: t('success_create') }
        format.json { render :show, status: :created, location: @waste_type }
      else
        format.html { render :new }
        format.json { render json: @waste_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /waste_types/1
  def update
    respond_to do |format|
      if @waste_type.update(waste_type_params)
        format.html { redirect_to @waste_type, notice: t('success_update') }
        format.json { render :show, status: :ok, location: @waste_type }
      else
        format.html { render :edit }
        format.json { render json: @waste_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /waste_types/1
  def destroy
    @waste_type.destroy
    respond_to do |format|
      format.html { redirect_to waste_types_url, notice: t('success_destroy') }
      format.json { head :no_content }
    end
  end

  private

  # Only allow a trusted parameter "white list" through.
  def waste_type_params
    params.require(:waste_type).permit(:name, :sort_order, :active_status, :comment)
  end
end

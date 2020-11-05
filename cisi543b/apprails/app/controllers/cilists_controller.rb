class CilistsController < ApplicationController
before_action :authenticate_user!

  #cancancan
  load_and_authorize_resource
  # before_action :set_cilist, only: [:show, :edit, :update, :destroy]

  #cancancan
  load_and_authorize_resource

  #cancancan
  load_and_authorize_resource


  # cancancan..
  #load_and_authorize_resource :cilist

  # GET /cilists
  def index
    @q = @cilists.search params[:q]
    @cilists = @q.result.page(params[:page])
  end

  # GET /cilists/1
  def show
  end

  # GET /cilists/new
  def new
  end

  # GET /cilists/1/edit
  def edit
  end

  # POST /cilists
  def create
    
    @cilist.user = current_user

    respond_to do |format|
      if @cilist.save
        format.html { redirect_to @cilist, notice: t('success_create') }
        format.json { render :show, status: :created, location: @cilist }
      else
        format.html { render :new }
        format.json { render json: @cilist.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cilists/1
  def update
    respond_to do |format|
      if @cilist.update(cilist_params)
        format.html { redirect_to @cilist, notice: t('success_update') }
        format.json { render :show, status: :ok, location: @cilist }
      else
        format.html { render :edit }
        format.json { render json: @cilist.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cilists/1
  def destroy
    @cilist.destroy
    respond_to do |format|
      format.html { redirect_to cilists_url, notice: t('success_destroy') }
      format.json { head :no_content }
    end
  end

  private

  # Only allow a trusted parameter "white list" through.
  def cilist_params
    params.require(:cilist).permit(:cell_or_location, :waste_type_id, :benefit_id, :current_state, :improvement_suggestion, :implementation_status_id, :feasibility_id, :user_id, :sort_order, :active_status)
  end
end

class UserSpecializedsController < ApplicationController
  before_action :set_user_specialized, only: [:show, :edit, :update, :destroy]

  # GET /user_specializeds
  # GET /user_specializeds.json
  def index
    @user_specializeds = UserSpecialized.all
  end

  # GET /user_specializeds/1
  # GET /user_specializeds/1.json
  def show
  end

  # GET /user_specializeds/new
  def new
    @user_specialized = UserSpecialized.new
  end

  # GET /user_specializeds/1/edit
  def edit
  end

  # POST /user_specializeds
  # POST /user_specializeds.json
  def create
    @user_specialized = UserSpecialized.new(user_specialized_params)

    respond_to do |format|
      if @user_specialized.save
        format.html { redirect_to @user_specialized, notice: 'User specialized was successfully created.' }
        format.json { render :show, status: :created, location: @user_specialized }
      else
        format.html { render :new }
        format.json { render json: @user_specialized.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_specializeds/1
  # PATCH/PUT /user_specializeds/1.json
  def update
    respond_to do |format|
      if @user_specialized.update(user_specialized_params)
        format.html { redirect_to @user_specialized, notice: 'User specialized was successfully updated.' }
        format.json { render :show, status: :ok, location: @user_specialized }
      else
        format.html { render :edit }
        format.json { render json: @user_specialized.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_specializeds/1
  # DELETE /user_specializeds/1.json
  def destroy
    @user_specialized.destroy
    respond_to do |format|
      format.html { redirect_to user_specializeds_url, notice: 'User specialized was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_specialized
      @user_specialized = UserSpecialized.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_specialized_params
      params.fetch(:user_specialized, {})
    end
end

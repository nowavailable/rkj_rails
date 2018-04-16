class JoiningRequestsController < ApplicationController
  before_action :set_joining_request, only: [:show, :edit, :update, :destroy]

  # GET /joining_requests
  # GET /joining_requests.json
  def index
    @joining_requests = JoiningRequest.all
  end

  # GET /joining_requests/1
  # GET /joining_requests/1.json
  def show
  end

  # GET /joining_requests/new
  def new
    @joining_request = JoiningRequest.new
  end

  # GET /joining_requests/1/edit
  def edit
  end

  # POST /joining_requests
  # POST /joining_requests.json
  def create
    @joining_request = JoiningRequest.new(joining_request_params)

    respond_to do |format|
      if @joining_request.save
        format.html { redirect_to @joining_request, notice: 'Joining request was successfully created.' }
        format.json { render :show, status: :created, location: @joining_request }
      else
        format.html { render :new }
        format.json { render json: @joining_request.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /joining_requests/1
  # PATCH/PUT /joining_requests/1.json
  def update
    respond_to do |format|
      if @joining_request.update(joining_request_params)
        format.html { redirect_to @joining_request, notice: 'Joining request was successfully updated.' }
        format.json { render :show, status: :ok, location: @joining_request }
      else
        format.html { render :edit }
        format.json { render json: @joining_request.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /joining_requests/1
  # DELETE /joining_requests/1.json
  def destroy
    @joining_request.destroy
    respond_to do |format|
      format.html { redirect_to joining_requests_url, notice: 'Joining request was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_joining_request
      @joining_request = JoiningRequest.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def joining_request_params
      params.fetch(:joining_request, {})
    end
end

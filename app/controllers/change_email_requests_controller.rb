class ChangeEmailRequestsController < ApplicationController
  before_action :set_change_email_request, only: [:show, :edit, :update, :destroy]

  # GET /change_email_requests
  # GET /change_email_requests.json
  def index
    @change_email_requests = ChangeEmailRequest.all
  end

  # GET /change_email_requests/1
  # GET /change_email_requests/1.json
  def show
  end

  # GET /change_email_requests/new
  def new
    @change_email_request = ChangeEmailRequest.new
  end

  # GET /change_email_requests/1/edit
  def edit
  end

  # POST /change_email_requests
  # POST /change_email_requests.json
  def create
    @change_email_request = ChangeEmailRequest.new(change_email_request_params)

    respond_to do |format|
      if @change_email_request.save
        format.html { redirect_to @change_email_request, notice: 'Change email request was successfully created.' }
        format.json { render :show, status: :created, location: @change_email_request }
      else
        format.html { render :new }
        format.json { render json: @change_email_request.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /change_email_requests/1
  # PATCH/PUT /change_email_requests/1.json
  def update
    respond_to do |format|
      if @change_email_request.update(change_email_request_params)
        format.html { redirect_to @change_email_request, notice: 'Change email request was successfully updated.' }
        format.json { render :show, status: :ok, location: @change_email_request }
      else
        format.html { render :edit }
        format.json { render json: @change_email_request.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /change_email_requests/1
  # DELETE /change_email_requests/1.json
  def destroy
    @change_email_request.destroy
    respond_to do |format|
      format.html { redirect_to change_email_requests_url, notice: 'Change email request was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_change_email_request
      @change_email_request = ChangeEmailRequest.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def change_email_request_params
      params.fetch(:change_email_request, {})
    end
end

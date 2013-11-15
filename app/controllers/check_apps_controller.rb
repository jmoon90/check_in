class CheckAppsController < ApplicationController
  before_action :set_check_app, only: [:show, :edit, :update, :destroy]

  # GET /check_apps
  # GET /check_apps.json
  def index
    @check_apps = CheckApp.all
  end

  # GET /check_apps/1
  # GET /check_apps/1.json
  def show
  end

  # GET /check_apps/new
  def new
    @check_app = CheckApp.new
  end

  # GET /check_apps/1/edit
  def edit
  end

  # POST /check_apps
  # POST /check_apps.json
  def create
    @check_app = CheckApp.new(check_app_params)

    respond_to do |format|
      if @check_app.save
        format.html { redirect_to @check_app, notice: 'Check app was successfully created.' }
        format.json { render action: 'show', status: :created, location: @check_app }
      else
        format.html { render action: 'new' }
        format.json { render json: @check_app.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /check_apps/1
  # PATCH/PUT /check_apps/1.json
  def update
    respond_to do |format|
      if @check_app.update(check_app_params)
        format.html { redirect_to @check_app, notice: 'Check app was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @check_app.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /check_apps/1
  # DELETE /check_apps/1.json
  def destroy
    @check_app.destroy
    respond_to do |format|
      format.html { redirect_to check_apps_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_check_app
      @check_app = CheckApp.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def check_app_params
      params.require(:check_app).permit(:first_name, :last_name)
    end
end

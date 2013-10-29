class LizdsController < ApplicationController
  before_action :set_lizd, only: [:show, :edit, :update, :destroy]

  # GET /lizds
  # GET /lizds.json
  def index
    @lizds = Lizd.all
  end

  # GET /lizds/1
  # GET /lizds/1.json
  def show
  end

  # GET /lizds/new
  def new
    @lizd = Lizd.new
  end

  # GET /lizds/1/edit
  def edit
  end

  # POST /lizds
  # POST /lizds.json
  def create
    @lizd = Lizd.new(lizd_params)

    respond_to do |format|
      if @lizd.save
        format.html { redirect_to @lizd, notice: 'Lizd was successfully created.' }
        format.json { render action: 'show', status: :created, location: @lizd }
      else
        format.html { render action: 'new' }
        format.json { render json: @lizd.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lizds/1
  # PATCH/PUT /lizds/1.json
  def update
    respond_to do |format|
      if @lizd.update(lizd_params)
        format.html { redirect_to @lizd, notice: 'Lizd was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @lizd.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lizds/1
  # DELETE /lizds/1.json
  def destroy
    @lizd.destroy
    respond_to do |format|
      format.html { redirect_to lizds_url }
      format.json { head :no_content }
    end
  end

  def sell_count
    
  end

  def lizard01
    
  end

  def share
    @contact = Contact.new
  end

  def launch
    
  end

  def about
    
  end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lizd
      @lizd = Lizd.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lizd_params
      params[:lizd]
    end
end

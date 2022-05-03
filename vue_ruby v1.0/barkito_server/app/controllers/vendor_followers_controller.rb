class VendorFollowersController < ApplicationController
  before_action :set_vendor_follower, only: %i[ show edit update destroy ]

  # GET /vendor_followers or /vendor_followers.json
  def index
    @vendor_followers = VendorFollower.all
  end

  # GET /vendor_followers/1 or /vendor_followers/1.json
  def show
  end

  # GET /vendor_followers/new
  def new
    @vendor_follower = VendorFollower.new
  end

  # GET /vendor_followers/1/edit
  def edit
  end

  # POST /vendor_followers or /vendor_followers.json
  def create
    @vendor_follower = VendorFollower.new(vendor_follower_params)

    respond_to do |format|
      if @vendor_follower.save
        format.html { redirect_to vendor_follower_url(@vendor_follower), notice: "Vendor follower was successfully created." }
        format.json { render :show, status: :created, location: @vendor_follower }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @vendor_follower.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vendor_followers/1 or /vendor_followers/1.json
  def update
    respond_to do |format|
      if @vendor_follower.update(vendor_follower_params)
        format.html { redirect_to vendor_follower_url(@vendor_follower), notice: "Vendor follower was successfully updated." }
        format.json { render :show, status: :ok, location: @vendor_follower }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @vendor_follower.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vendor_followers/1 or /vendor_followers/1.json
  def destroy
    @vendor_follower.destroy

    respond_to do |format|
      format.html { redirect_to vendor_followers_url, notice: "Vendor follower was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vendor_follower
      @vendor_follower = VendorFollower.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def vendor_follower_params
      params.require(:vendor_follower).permit(:user_id, :vendor_id)
    end
end

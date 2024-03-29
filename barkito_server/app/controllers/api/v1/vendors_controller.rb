class Api::V1::VendorsController < ApplicationController
  before_action :set_vendor, only: %i[ show update destroy ]

  # GET /vendors
  def index
    @vendors = Vendor.all

    render json: @vendors
  end

  # GET /vendors/1
  def show
    render json: @vendor
  end

  # POST /vendors
  def create
    @vendor = Vendor.new(vendor_params)

    if @vendor.save
      render json: @vendor, status: :created, location: @vendor
    else
      render json: @vendor.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /vendors/1
  def update
    if @vendor.update(vendor_params)
      render json: @vendor
    else
      render json: @vendor.errors, status: :unprocessable_entity
    end
  end

  # DELETE /vendors/1
  def destroy
    @vendor.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vendor
      @vendor = Vendor.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def vendor_params
      params.require(:vendor).permit(:vendor_name, :vendor_email, :vendor_website, :vendor_phone_number, :vendor_neighborhood, :building_number, :vendor_borough, :vendor_street, :vendor_city, :zip_code, :vendor_category, :vendor_subcategory, :seating, :crew, :vendor_founded_date, :vendor_accepted_payment, :open_time, :closing_time, :working_days)
    end
end

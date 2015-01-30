class ClassifiedAdsController < ApplicationController
  before_action :set_classified_ad, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:create, :edit, :update, :destroy]

  # GET /classified_ads
  # GET /classified_ads.json
  def index
    @classified_ads = ClassifiedAd.all
  end

  # GET /classified_ads/1
  # GET /classified_ads/1.json
  def show
  end

  # GET /classified_ads/new
  def new
    @classified_ad = ClassifiedAd.new
  end

  # GET /classified_ads/1/edit
  def edit
  end

  # POST /classified_ads
  # POST /classified_ads.json
  def create
    @classified_ad = ClassifiedAd.new(classified_ad_params)

    respond_to do |format|
      if @classified_ad.save
        format.html { redirect_to @classified_ad, notice: 'Classified ad was successfully created.' }
        format.json { render :show, status: :created, location: @classified_ad }
      else
        format.html { render :new }
        format.json { render json: @classified_ad.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /classified_ads/1
  # PATCH/PUT /classified_ads/1.json
  def update
    respond_to do |format|
      if @classified_ad.update(classified_ad_params)
        format.html { redirect_to @classified_ad, notice: 'Classified ad was successfully updated.' }
        format.json { render :show, status: :ok, location: @classified_ad }
      else
        format.html { render :edit }
        format.json { render json: @classified_ad.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /classified_ads/1
  # DELETE /classified_ads/1.json
  def destroy
    @classified_ad.destroy
    respond_to do |format|
      format.html { redirect_to classified_ads_url, notice: 'Classified ad was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_classified_ad
      @classified_ad = ClassifiedAd.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def classified_ad_params
      params.require(:classified_ad).permit(:title, :description)
    end
end

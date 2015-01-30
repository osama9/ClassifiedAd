require 'test_helper'

class ClassifiedAdsControllerTest < ActionController::TestCase
  setup do
    @classified_ad = classified_ads(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:classified_ads)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create classified_ad" do
    assert_difference('ClassifiedAd.count') do
      post :create, classified_ad: { description: @classified_ad.description, title: @classified_ad.title }
    end

    assert_redirected_to classified_ad_path(assigns(:classified_ad))
  end

  test "should show classified_ad" do
    get :show, id: @classified_ad
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @classified_ad
    assert_response :success
  end

  test "should update classified_ad" do
    patch :update, id: @classified_ad, classified_ad: { description: @classified_ad.description, title: @classified_ad.title }
    assert_redirected_to classified_ad_path(assigns(:classified_ad))
  end

  test "should destroy classified_ad" do
    assert_difference('ClassifiedAd.count', -1) do
      delete :destroy, id: @classified_ad
    end

    assert_redirected_to classified_ads_path
  end
end

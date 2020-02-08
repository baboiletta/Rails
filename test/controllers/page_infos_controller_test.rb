require 'test_helper'

class PageInfosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @page_info = page_infos(:one)
  end

  test "should get index" do
    get page_infos_url
    assert_response :success
  end

  test "should get new" do
    get new_page_info_url
    assert_response :success
  end

  test "should create page_info" do
    assert_difference('PageInfo.count') do
      post page_infos_url, params: { page_info: {  } }
    end

    assert_redirected_to page_info_url(PageInfo.last)
  end

  test "should show page_info" do
    get page_info_url(@page_info)
    assert_response :success
  end

  test "should get edit" do
    get edit_page_info_url(@page_info)
    assert_response :success
  end

  test "should update page_info" do
    patch page_info_url(@page_info), params: { page_info: {  } }
    assert_redirected_to page_info_url(@page_info)
  end

  test "should destroy page_info" do
    assert_difference('PageInfo.count', -1) do
      delete page_info_url(@page_info)
    end

    assert_redirected_to page_infos_url
  end
end

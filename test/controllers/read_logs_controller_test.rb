require 'test_helper'

class ReadLogsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @read_log = read_logs(:one)
  end

  test "should get index" do
    get read_logs_url
    assert_response :success
  end

  test "should get new" do
    get new_read_log_url
    assert_response :success
  end

  test "should create read_log" do
    assert_difference('ReadLog.count') do
      post read_logs_url, params: { read_log: { read_book: @read_log.read_book, reader: @read_log.reader } }
    end

    assert_redirected_to read_log_url(ReadLog.last)
  end

  test "should show read_log" do
    get read_log_url(@read_log)
    assert_response :success
  end

  test "should get edit" do
    get edit_read_log_url(@read_log)
    assert_response :success
  end

  test "should update read_log" do
    patch read_log_url(@read_log), params: { read_log: { read_book: @read_log.read_book, reader: @read_log.reader } }
    assert_redirected_to read_log_url(@read_log)
  end

  test "should destroy read_log" do
    assert_difference('ReadLog.count', -1) do
      delete read_log_url(@read_log)
    end

    assert_redirected_to read_logs_url
  end
end

require 'test_helper'

class LoanLogsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @loan_log = loan_logs(:one)
  end

  test "should get index" do
    get loan_logs_url
    assert_response :success
  end

  test "should get new" do
    get new_loan_log_url
    assert_response :success
  end

  test "should create loan_log" do
    assert_difference('LoanLog.count') do
      post loan_logs_url, params: { loan_log: { book_name: @loan_log.book_name, loan_status: @loan_log.loan_status, loaner_name: @loan_log.loaner_name } }
    end

    assert_redirected_to loan_log_url(LoanLog.last)
  end

  test "should show loan_log" do
    get loan_log_url(@loan_log)
    assert_response :success
  end

  test "should get edit" do
    get edit_loan_log_url(@loan_log)
    assert_response :success
  end

  test "should update loan_log" do
    patch loan_log_url(@loan_log), params: { loan_log: { book_name: @loan_log.book_name, loan_status: @loan_log.loan_status, loaner_name: @loan_log.loaner_name } }
    assert_redirected_to loan_log_url(@loan_log)
  end

  test "should destroy loan_log" do
    assert_difference('LoanLog.count', -1) do
      delete loan_log_url(@loan_log)
    end

    assert_redirected_to loan_logs_url
  end
end

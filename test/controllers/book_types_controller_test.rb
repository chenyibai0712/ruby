require 'test_helper'

class BookTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @book_type = book_types(:one)
  end

  test "should get index" do
    get book_types_url
    assert_response :success
  end

  test "should get new" do
    get new_book_type_url
    assert_response :success
  end

  test "should create book_type" do
    assert_difference('BookType.count') do
      post book_types_url, params: { book_type: { types_abstract: @book_type.types_abstract, types_name: @book_type.types_name, types_tag: @book_type.types_tag } }
    end

    assert_redirected_to book_type_url(BookType.last)
  end

  test "should show book_type" do
    get book_type_url(@book_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_book_type_url(@book_type)
    assert_response :success
  end

  test "should update book_type" do
    patch book_type_url(@book_type), params: { book_type: { types_abstract: @book_type.types_abstract, types_name: @book_type.types_name, types_tag: @book_type.types_tag } }
    assert_redirected_to book_type_url(@book_type)
  end

  test "should destroy book_type" do
    assert_difference('BookType.count', -1) do
      delete book_type_url(@book_type)
    end

    assert_redirected_to book_types_url
  end
end

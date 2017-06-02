require 'test_helper'

class BookContentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @book_content = book_contents(:one)
  end

  test "should get index" do
    get book_contents_url
    assert_response :success
  end

  test "should get new" do
    get new_book_content_url
    assert_response :success
  end

  test "should create book_content" do
    assert_difference('BookContent.count') do
      post book_contents_url, params: { book_content: { book_chapter: @book_content.book_chapter, book_content: @book_content.book_content, book_id: @book_content.book_id, book_name: @book_content.book_name } }
    end

    assert_redirected_to book_content_url(BookContent.last)
  end

  test "should show book_content" do
    get book_content_url(@book_content)
    assert_response :success
  end

  test "should get edit" do
    get edit_book_content_url(@book_content)
    assert_response :success
  end

  test "should update book_content" do
    patch book_content_url(@book_content), params: { book_content: { book_chapter: @book_content.book_chapter, book_content: @book_content.book_content, book_id: @book_content.book_id, book_name: @book_content.book_name } }
    assert_redirected_to book_content_url(@book_content)
  end

  test "should destroy book_content" do
    assert_difference('BookContent.count', -1) do
      delete book_content_url(@book_content)
    end

    assert_redirected_to book_contents_url
  end
end

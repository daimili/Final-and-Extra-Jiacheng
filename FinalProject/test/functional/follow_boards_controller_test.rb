require 'test_helper'

class FollowBoardsControllerTest < ActionController::TestCase
  setup do
    @follow_board = follow_boards(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:follow_boards)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create follow_board" do
    assert_difference('FollowBoard.count') do
      post :create, follow_board: { board_id: @follow_board.board_id, user_id: @follow_board.user_id }
    end

    assert_redirected_to follow_board_path(assigns(:follow_board))
  end

  test "should show follow_board" do
    get :show, id: @follow_board
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @follow_board
    assert_response :success
  end

  test "should update follow_board" do
    put :update, id: @follow_board, follow_board: { board_id: @follow_board.board_id, user_id: @follow_board.user_id }
    assert_redirected_to follow_board_path(assigns(:follow_board))
  end

  test "should destroy follow_board" do
    assert_difference('FollowBoard.count', -1) do
      delete :destroy, id: @follow_board
    end

    assert_redirected_to follow_boards_path
  end
end

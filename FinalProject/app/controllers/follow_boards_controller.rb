class FollowBoardsController < ApplicationController
  # GET /follow_boards
  # GET /follow_boards.json
  def index
    @follow_boards = FollowBoard.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @follow_boards }
    end
  end

  # GET /follow_boards/1
  # GET /follow_boards/1.json
  def show
    @follow_board = FollowBoard.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @follow_board }
    end
  end

  # GET /follow_boards/new
  # GET /follow_boards/new.json
  def new
    @follow_board = FollowBoard.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @follow_board }
    end
  end

  # GET /follow_boards/1/edit
  def edit
    @follow_board = FollowBoard.find(params[:id])
  end

  # POST /follow_boards
  # POST /follow_boards.json
  def create
    
    @follow_board = current_user.follow_boards.build(:board_id => params[:board_id])

    respond_to do |format|
      if @follow_board.save
        format.html { redirect_to @follow_board, notice: 'Follow board was successfully created.' }
        format.json { render json: @follow_board, status: :created, location: @follow_board }
      else
        format.html { render action: "new" }
        format.json { render json: @follow_board.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /follow_boards/1
  # PUT /follow_boards/1.json
  def update
    @follow_board = FollowBoard.find(params[:id])

    respond_to do |format|
      if @follow_board.update_attributes(params[:follow_board])
        format.html { redirect_to @follow_board, notice: 'Follow board was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @follow_board.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /follow_boards/1
  # DELETE /follow_boards/1.json
  def destroy
    @follow_board = FollowBoard.find(params[:id])
    @follow_board.destroy

    respond_to do |format|
      format.html { redirect_to follow_boards_url }
      format.json { head :no_content }
    end
  end
end

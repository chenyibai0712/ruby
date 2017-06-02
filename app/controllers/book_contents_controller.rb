class BookContentsController < ApplicationController
  before_action :set_book_content, only: [:show, :edit, :update, :destroy]

  # GET /book_contents
  # GET /book_contents.json
  def index
    @book_contents = BookContent.all
  end

  # GET /book_contents/1
  # GET /book_contents/1.json
  def show
  end

  # GET /book_contents/new
  def new
    @book_content = BookContent.new
  end

  # GET /book_contents/1/edit
  def edit
  end

  # POST /book_contents
  # POST /book_contents.json
  def create
    @book_content = BookContent.new(book_content_params)

    respond_to do |format|
      if @book_content.save
        format.html { redirect_to @book_content, notice: 'Book content was successfully created.' }
        format.json { render :show, status: :created, location: @book_content }
      else
        format.html { render :new }
        format.json { render json: @book_content.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /book_contents/1
  # PATCH/PUT /book_contents/1.json
  def update
    respond_to do |format|
      if @book_content.update(book_content_params)
        format.html { redirect_to @book_content, notice: 'Book content was successfully updated.' }
        format.json { render :show, status: :ok, location: @book_content }
      else
        format.html { render :edit }
        format.json { render json: @book_content.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /book_contents/1
  # DELETE /book_contents/1.json
  def destroy
    @book_content.destroy
    respond_to do |format|
      format.html { redirect_to book_contents_url, notice: 'Book content was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_book_content
      @book_content = BookContent.find(params[:id])
      @book_name=params[:read_book]
      @read_log = ReadLog.new
      @read_log.read_book=params[:read_book]
      @read_log.reader=params[:reader]
      @read_log.save
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def book_content_params
      params.require(:book_content).permit(:book_name, :book_content, :book_chapter, :book_id)
    end
end

class BooksController < ApplicationController
  before_action :set_book, only: [:show, :edit, :update, :destroy,:loan_book]

  # GET /books
  # GET /books.json
  def index
    unless params[:types].blank?
      @books=Book.where(types: params[:types])
    else
      @q  = Book.ransack(params[:q])
      @books = @q.result(distinct: true)
      #@books=Book.where("name	like	?",	"%1%")
    end
    #借阅书的方法,如果这俩参数都不是空的则说明是有人需要借书
    unless params[:loaner].blank? && params[:book_status].blank?
      @book = Book.find(params[:id])
      @book.book_loaner=params[:loaner]
      @book.book_status=params[:book_status]
      @book.save
     #给借书记录表中添加一条借书的记录，还书也是如此（仅仅是状态不一样）
      @loan_log = LoanLog.new
      @loan_log.book_name=@book.name
      @loan_log.loaner_name=params[:loaner]
      @loan_log.loan_status=params[:book_status]
      @loan_log.save
      redirect_to(:action => 'index')
    end
    @book_types = BookType.all
  end

  # GET /books/1
  # GET /books/1.json
  def show
  end

  # GET /books/new
  def new
    @book = Book.new
    @book_types = BookType.all
  end

  # GET /books/1/edit
  def edit
    @book_types = BookType.all
  end


  # POST /books
  # POST /books.json
  def create
    @book = Book.new(book_params)
    @book.picture='/default.jpg'
    respond_to do |format|
      if @book.save
        format.html { redirect_to books_url, notice: '书籍添加成功.' }
        format.json { render :show, status: :created, location: @book }
      else
        format.html { render :new }
        format.json { render json: @book.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /books/1
  # PATCH/PUT /books/1.json
  def update
    respond_to do |format|
      if @book.update(book_params)
        format.html { redirect_to books_url, notice: '书籍更新成功.' }
        format.json { render :show, status: :ok, location: @book }
      else
        format.html { render :edit }
        format.json { render json: @book.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /books/1
  # DELETE /books/1.json
  def destroy
    @book.destroy
    respond_to do |format|
      format.html { redirect_to books_url, notice: '书籍删除成功.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_book
      @book = Book.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def book_params
      params.require(:book).permit(:name, :price, :description, :types, :url, :picture, :author)
    end

end

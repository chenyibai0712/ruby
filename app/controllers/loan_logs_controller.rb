class LoanLogsController < ApplicationController
  before_action :set_loan_log, only: [:show, :edit, :update, :destroy]

  # GET /loan_logs
  # GET /loan_logs.json
  def index
    @loan_logs=LoanLog.findall( params[:read_book])
  end

  # GET /loan_logs/1
  # GET /loan_logs/1.json
  def show
  end

  # GET /loan_logs/new
  def new
    @loan_log = LoanLog.new
  end

  # GET /loan_logs/1/edit
  def edit
  end

  # POST /loan_logs
  # POST /loan_logs.json
  def create
    @loan_log = LoanLog.new(loan_log_params)

    respond_to do |format|
      if @loan_log.save
        format.html { redirect_to @loan_log, notice: 'Loan log was successfully created.' }
        format.json { render :show, status: :created, location: @loan_log }
      else
        format.html { render :new }
        format.json { render json: @loan_log.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /loan_logs/1
  # PATCH/PUT /loan_logs/1.json
  def update
    respond_to do |format|
      if @loan_log.update(loan_log_params)
        format.html { redirect_to @loan_log, notice: 'Loan log was successfully updated.' }
        format.json { render :show, status: :ok, location: @loan_log }
      else
        format.html { render :edit }
        format.json { render json: @loan_log.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /loan_logs/1
  # DELETE /loan_logs/1.json
  def destroy
    @loan_log.destroy
    respond_to do |format|
      format.html { redirect_to loan_logs_url, notice: 'Loan log was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_loan_log
      @loan_log = LoanLog.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def loan_log_params
      params.require(:loan_log).permit(:book_name, :loaner_name, :loan_status)
    end
end

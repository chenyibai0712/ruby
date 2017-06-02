class ReadLogsController < ApplicationController
  before_action :set_read_log, only: [:show, :edit, :update, :destroy]

  # GET /read_logs
  # GET /read_logs.json
  def index
    @read_logs = ReadLog.all
  end

  # GET /read_logs/1
  # GET /read_logs/1.json
  def show
  end

  # GET /read_logs/new
  def new
    @read_log = ReadLog.new
  end

  # GET /read_logs/1/edit
  def edit
  end

  # POST /read_logs
  # POST /read_logs.json
  def create
    @read_log = ReadLog.new(read_log_params)

    respond_to do |format|
      if @read_log.save
        format.html { redirect_to @read_log, notice: 'Read log was successfully created.' }
        format.json { render :show, status: :created, location: @read_log }
      else
        format.html { render :new }
        format.json { render json: @read_log.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /read_logs/1
  # PATCH/PUT /read_logs/1.json
  def update
    respond_to do |format|
      if @read_log.update(read_log_params)
        format.html { redirect_to @read_log, notice: 'Read log was successfully updated.' }
        format.json { render :show, status: :ok, location: @read_log }
      else
        format.html { render :edit }
        format.json { render json: @read_log.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /read_logs/1
  # DELETE /read_logs/1.json
  def destroy
    @read_log.destroy
    respond_to do |format|
      format.html { redirect_to read_logs_url, notice: 'Read log was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_read_log
      @read_log = ReadLog.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def read_log_params
      params.require(:read_log).permit(:reader, :read_book)
    end
end

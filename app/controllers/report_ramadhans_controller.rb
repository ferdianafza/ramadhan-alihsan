class ReportRamadhansController < ApplicationController
  before_action :authenticate_student!
  before_action :set_report, only: [:show, :edit, :update]

  def index
    @report_ramadhans = current_student.report_ramadhans.all
    # .order(created_at: :desc).page params[:page]
  end

  def new
    @report_ramadhan = current_student.report_ramadhans.new
  end

  def create
    @report_ramadhan = current_student.report_ramadhans.new(report_ramadhan_params)

    respond_to do |format|
      if @report_ramadhan.save
        format.html { redirect_to homes_path, notice: 'Laporan Agenda Ramadhan berhasil dibuat.' }
        format.json { render :show, status: :created, location: @report_ramadhan }
      else
        format.html { render :new }
        format.json { render json: @report_ramadhan.errors, status: :unprocessable_entity }
      end
    end
  end

  private

    def report_ramadhan_params
      params.require(:report_ramadhan).permit(:puasa, :tadarus, :tarawih, :subuh, :dzuhur, :ashar, :magrib, :isya, :duha, :tahajud, :taubat, :hajat, :alasan, :student_id, :tanggal)
    end

    def set_report_ramadhan_params
      @report = ReportRamadhan.find(params[:id])
    end

end

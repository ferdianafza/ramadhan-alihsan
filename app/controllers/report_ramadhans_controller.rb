class ReportRamadhansController < ApplicationController
  require 'twilio-ruby'

  before_action :authenticate_student!
  before_action :set_report, only: [:show, :edit, :update]

  # def index
  #   @report_ramadhans = current_student.report_ramadhans.all
  #   # .order(created_at: :desc).page params[:page]
  # end

  def new
    @report_ramadhan = current_student.report_ramadhans.new
  end

  def create
    @report_ramadhan = current_student.report_ramadhans.new(report_ramadhan_params)
      if @report_ramadhan.save
        begin
          send_message_to_afza
        rescue
          false
        end
      end
      if @report_ramadhan.save
        begin
          send_message_to_admin
        rescue
          false
        end
      end
    respond_to do |format|
      if @report_ramadhan.save
        format.html { redirect_to homes_path, notice: 'Laporan Agenda Ramadhan berhasil dibuat.' }
        format.json { render :show, status: :created }
      else
        format.html { redirect_to homes_path, notice: 'Laporan Agenda Ramadhan gagal dibuat harap isi kolom Bukti Laporan .' }
        format.json { render json: @report_ramadhan.errors, status: :unprocessable_entity }
      end
    end
  end

  private

    def report_ramadhan_params
      params.require(:report_ramadhan).permit(:puasa, :tadarus, :tarawih, :subuh, :dzuhur,
                                         :ashar, :magrib, :isya, :duha, :tahajud, :taubat,
                                        :hajat, :alasan, :student_id, :major_id, :tanggal, files: [])
    end

    def set_report_ramadhan_params
      @report = ReportRamadhan.find(params[:id])
    end

    def send_message_to_afza
      account_sid = 'AC933b0a4024b523adcba2457b758dbdc4'
      auth_token = 'd34fdbfe23f1855e76ca994fdb1b113c'
      client = Twilio::REST::Client.new(account_sid, auth_token)

      from = '+16623378759'
      to = '+6282127015766'

      client.messages.create(
      from: from,
      to: to,
      body: "Assalamualaikum.....,#{@report_ramadhan.student.firstname.to_s} #{@report_ramadhan.student.lastname.to_s} kelas #{@report_ramadhan.major.name} baru saja mengirimkan laporan untuk tanggal #{@report_ramadhan.tanggal}!"
      )
    end

    def send_message_to_admin
      account_sid = 'AC8a60fb745765bb9b6e65778abf5e0800'
      auth_token = '426f01bdc59dc636b0864422b645a5aa'
      client = Twilio::REST::Client.new(account_sid, auth_token)

      from = '+18482259794'
      to = '+6281224864547'

      client.messages.create(
      from: from,
      to: to,
      body: "Assalamualaikum.....,#{@report_ramadhan.student.firstname.to_s} #{@report_ramadhan.student.lastname.to_s} kelas #{@report_ramadhan.major.name} baru saja mengirimkan laporan untuk tanggal #{@report_ramadhan.tanggal}!"
      )
    end

end

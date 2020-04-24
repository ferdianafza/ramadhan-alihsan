class HomesController < ApplicationController
  before_action :authenticate_student!

  def index
    @report_ramadhan = current_student.report_ramadhans.new
  end

  def myreports
    @report_ramadhans = current_student.report_ramadhans.all
  end

  def show
    @report_ramadhans = current_student.report_ramadhans.all.order(tanggal: :desc ).page params[:page]
  end

  def profile

  end

end

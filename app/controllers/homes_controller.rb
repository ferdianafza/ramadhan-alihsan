class HomesController < ApplicationController
  before_action :authenticate_student!

  def index
    @report_ramadhan = current_student.report_ramadhans.new
  end
end

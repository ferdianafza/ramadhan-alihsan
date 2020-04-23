class GradesController < InheritedResources::Base

  private

    def grade_params
      params.require(:grade).permit(:class)
    end

end

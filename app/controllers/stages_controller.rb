class StagesController < InheritedResources::Base

  private

    def stage_params
      params.require(:stage).permit(:grade)
    end

end

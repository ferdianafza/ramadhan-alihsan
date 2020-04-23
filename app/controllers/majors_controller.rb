class MajorsController < InheritedResources::Base

  private

    def major_params
      params.require(:major).permit(:name)
    end

end

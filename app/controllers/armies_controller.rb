class ArmiesController<ApplicationController

  def index
    @armies=Army.all
    render json: @armies
  end

  def show
    @army=Army.find(params[:id])
    render json: @army
  end

private

  def army_params
    params.require(army).permit(:name,:description)
  end

end

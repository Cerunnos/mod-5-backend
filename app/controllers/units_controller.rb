class UnitsController<ApplicationController

  def index
    @units=Unit.all
    render json: @units
  end

  def show
    @unit=Unit.find(params[:id])
    render json: @unit
  end

  def create
    unit=Unit.create(unit_params)
    render json: unit
  end

  def destroy
    @unit=Unit.find(params[:id]).destroy
    render json: {result:"Success"}
  end

  def update
    @unit=Unit.find(params[:id])
    @unit.update(name: params[:name],description: params[:description],abilities: params[:abilities],movement: params[:movement],range: params[:range],bs: params[:bs],as: params[:as],attacks: params[:attacks],willpower: params[:willpower],armor: params[:armor],wounds: params[:wounds],leadership: params[:leadership], points: params[:points], army_id: params[:army_id])
    render json: {result: "Updated"}
  end

private

  def unit_params
    params.require(:unit).permit(:name,:description,:abilities,:movement,:range,:bs,:as,:attacks,:willpower,:armor,:wounds,:leadership, :points, :army_id)
  end

end

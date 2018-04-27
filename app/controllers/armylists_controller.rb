class ArmylistsController<ApplicationController

  def index
    @armylists=Armylist.all
    render json: @armylists
  end

  def show
    @armylist=Armylist.find(params[:id])
    render json: @armylist
  end

  def create
    @armylist=Armylist.create(armylist_params)
    render json: @armylist
  end

  def destroy
    @armylist=Armylist.find(params[:id]).destroy
    render json: {result:"Success"}
  end

  def update
    @armylist=Armylist.find(params[:id])
    @armylist.update(name: params[:name],description: params[:description],unit_ids: params[:unit_ids])
    render json: {result: "Updated"}
  end

private

  def armylist_params
    params.require(:armylist).permit(:name,:description,:unit_ids)
  end

end

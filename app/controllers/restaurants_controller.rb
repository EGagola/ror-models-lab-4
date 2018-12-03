class RestaurantsController < ApplicationController

  def chef
    @chef = Chef.find(params[:id])
  end

  def home
  end

  def chef
    @chef = Chef.all
  end

  def chefnew
    @chef = Chef.new
  end

  def chefshow
    id = params[:id].to_i
    @chef = Chef.find_by_id id
  end

  def dish
    @dish = Dish.all
  end

  def dishnew
    @dish = Dish.new
    render :dishnew
  end

  def dishshow
    id = params[:id].to_i
    @dish = Dish.find_by_id id
    render :dishshow
  end

  def chef_params
    params.require(:chef).permit(:name, :age)
  end

  def chefsave
    @chef = Chef.new(chef_params)
    @chef.save
  end
end

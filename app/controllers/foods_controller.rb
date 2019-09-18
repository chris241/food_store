class FoodsController < ApplicationController
  def index
    @foods = Food.all
  end

  def show
    @menu = Menu.find(params[:id])
    
  end

  def new
    @menu = Menu.all

  end

  def create
    @food = Food.new

      Food.create!(name: params[:name],
      description: params[:description],
      price: params[:price],
      duration: params[:duration],
      menu_id: params[:menu_id],
      image_url:params[:image_url])

      if @food.save
        flash[:success] = "Créé avec succés"
        redirect_to foods_path

      else
        render :new
      end
  end

  def updateAvatar
    p params
    food = Food.where(id: params[:food_id], menu_id: params[:menu_id])[0]

    food.foodavatar.attach(params[:foodavatar])
  end

  def update

    @food =Food.find(params[:id])
    if @food.update(
                    name: params[:name][0],
                    description: params[:description][0],
                    price:params[:price][0],
                    duration: params[:duration][0],
                    menu_id: params[:menu_id],
                    image_url:params[:image_url]
                      )
  flash[:success] = "Modifié avec succés"
  redirect_to root_path

   else
render :edit
    end
  end

  def destroy
    @food = Food.find(params[:id])
    @food.destroy
    redirect_to foods_path
  end
  private
    def foodavatar_params
      params.require(:foodavatar).permit(:foodavatar)
    end
end

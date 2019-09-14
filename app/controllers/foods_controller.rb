class FoodsController < ApplicationController
  def index
    @foods = Food.all
  end

  def show
    @menu = Menu.find(params[:id])
    session[:food_id]=params[:id]
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
    menu = Menu.find(params[:menu_id])
    p "####################"
    p params
    foods = menu.foods
    foods.each do |f|
      if(f.id == params[:food_id])
        food = f
        food.image_url = params[:foodavatar].original_filename
        food.save
        File.open(Rails.root.join('public', 'uploads', params[:foodavatar].original_filename), 'wb') do |file|
          file.write(uploaded_io.read)
        end
      end
    end
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
end

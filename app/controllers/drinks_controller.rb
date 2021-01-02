class DrinksController < ApplicationController
  before_action :set_user, except: [:index, :ranking]
  def index
    if signed_in?
      @drinks = current_user.drinks
    end
  end

  def ranking
    @duplicate_start_time = Drink.find_by(start_time: params[:start_time])
    @rankings = Drink.where(start_time: @duplicate_start_time.start_time).order('total_abv desc').limit(5)
  end

  def ranking_info
    @user = User.find(params[:user_id])
  end

  def show
    @drink = current_user.drinks.find(params[:id])
  end

  def new
    @drinks = current_user.drinks
    @user = User.find_by(id: current_user.id)
  end

  def edit
    @drink = current_user.drinks.find(params[:id])
  end

  def update
    @drink = current_user.drinks.find(params[:id])
    @drink.update(update_params)
    @drink.update(update_param)
    redirect_to root_path
  end

  def create
    @drink = current_user.drinks.new(drink_record)
    if @drink.save
      redirect_to root_path
    else
      redirect_to new_user_drink_path(@user.id)
    end
  end

  def destroy
    @drinks = current_user.drinks.find(params[:id])
    @drinks.destroy
    redirect_to root_path(@user.id)
  end


  private
  def drink_record
    params.permit(:start_time, :user_id, :non_drinking, :type_id, :volume,
                  :type2_id, :volume2, :type3_id, :volume3, :type4_id, :volume4, 
                  :type5_id, :volume5, :total_abv, :comment)
  end

  def set_user
    @user = User.find(params[:user_id])
  end

  def update_params
    params.require(:drink).permit(:start_time, :user_id, :non_drinking, :type_id, :volume,
                                  :type2_id, :volume2, :type3_id, :volume3, :type4_id, :volume4, 
                                  :type5_id, :volume5, :comment)
  end

  def update_param
    params.permit(:total_abv)
  end
end
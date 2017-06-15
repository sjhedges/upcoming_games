class GamesController < ApplicationController
  before_action :set_game, except: [:index, :new, :create]

  def index
    @games = Game.all
  end

  def show
  end

  def new
    @game = Game.new
  end

  def create
    @game = Game.new(game_params)
    if @game.save
      redirect_to @game, success: 'Game Successfully Created!'
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @game.update(game_params)
      redirect_to games_path, success: 'Game Successfully Edited!'
    else
      render :edit
    end
  end

  def destroy
    @game.destroy
    redirect_to games_path
  end

  private

  def game_params
    params.require(:game).permit(:name, :genre, :description,
                                 :rating, :platform, :release_date)
  end

  def set_game
    @game = Game.find(params[:id])
  end
end

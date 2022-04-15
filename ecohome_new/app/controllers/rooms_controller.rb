class RoomsController < ApplicationController
  before_action :set_room, [:show, :edit, :update, :destroy]

  def index
    @rooms = Room.all
  end

  def show
  end

  def new
    @room = Room.new
  end

  def edit
  end

  def create
    @room = Room.new(rooms_params)

    if @room.save
      redirect_to rooms_path, notice: "Room was successfully created!"
    else
      render :new
    end
  end

  def update
    if @room.update(rooms_params)
      redirect_to rooms_path, notice: "Room was successfully edited!"
    else
      render :edit
    end
  end
  
  def destroy
    @room.destroy
    redirect_to rooms_path, notice: "Room was successfully destroyed!"
  end

  private

  def set_room
    @room = room.find(params[:id])
  end

  def rooms_params
    params.require(:room).permit(:name)
  end
end

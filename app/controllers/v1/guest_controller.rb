class V1::GuestController < ApplicationController

  def index
    @guests = Guest.all
    render json: @guests, status: :ok
  end

  def create
    @guest = Guest.new(guests_param)
    # @guest = Guest.new(username:"chheng",paymenth_method: "ABA",price:20,status:"pending",location:"pp",phone_number:"983838278282")


    @guest.save
    render json: @guest, status: :created
    
  end

  def destroy
    @guest = Guest.where(id: params[:id]).first
    if @guest.destroy
      head(:ok)
    else
      head(:unprocessable_entity)
    end
  end

  private

  def guests_param 
    params.require(:guest).permit(:username, :paymenth_method, :price, :status, :location, :phone_numnber)
  end

end

class FlatsController < ApplicationController
  def index
    @flats = Flat.all
  end

  def bookmark
    @flat = Flat.find(params[:id])
    @flat.booked = !@flat.booked
    @flat.save
    render partial: "booked", locals: { flat: @flat }
  end
end

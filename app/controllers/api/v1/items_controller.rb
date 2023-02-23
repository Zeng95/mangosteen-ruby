class Api::V1::ItemsController < ApplicationController
  def index
    items = Item.page(1)
    render json: {
      resources: items,
    }
  end

  def create
    item = Item.new amount: 1
    if item.save
      render json: { resource: item, status: :created }
    else
      render json: { errors: item.errors, status: :unprocessable_entity }
    end
  end
end

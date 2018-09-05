class EquipeController < ApplicationController
  def index
  end

  def create
    Equipe.create(name: params[:name], email: params[:email], phone_number: params[:phone_number])
  end
end

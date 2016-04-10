class WelcomeController < ApplicationController
  def index

  end
  def show
    @text_to_show = params[:id]

  end
  def delete

  end

end

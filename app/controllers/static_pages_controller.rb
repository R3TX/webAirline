class StaticPagesController < ApplicationController
  def home
    @origin = Origen.all
  end
  def index

  end

  def help
  end
  def about
  end
  def contact
  end
end

class MyhomeController < ApplicationController
  def index
    @links = Link.all
  end
end

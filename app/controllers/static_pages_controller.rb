class StaticPagesController < ApplicationController
  def top
    @administrator = User.first
  end
end

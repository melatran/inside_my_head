class DearNoOneController < ApplicationController
  def new
  end

  def create
    redirect_to dear_no_one_path
  end
end
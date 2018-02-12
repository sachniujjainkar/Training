class StaticpagesController < ApplicationController
  before_action :set_user, only: [:about, :suport, :contact]
  def about

  end

  def support

  end

  def contact

  end
  def set_user
    @usee = current_user
  end
end

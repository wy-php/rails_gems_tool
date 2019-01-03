class StaticPagesController < ApplicationController
  def home
  end

  def help

  end

  def about
    @hash1 = {:bread => 'white', :filling => 'peanut butter and jelly'}
    @hash2 = {:bread => 'whole wheat'}
  end
end

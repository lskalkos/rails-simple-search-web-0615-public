class SearchController < ApplicationController
  def index
    @search = Search.for(params[:keyword])

    if @search.count == 1 && @search.first.name == params[:keyword]
      @word = Word.find_by(name: @search.first.name)

      redirect_to @word
    elsif @search.count > 0

      render 'index'
    else
      flash[:notice] = "No results matching that query."

      redirect_to '/'
    end

  end


end

class UrlsController < ApplicationController

  def new
    @url = Url.new
  end

 def create
    @url = Url.new(url_params)
    if @url.save
      flash[:notice] = "Your url has been saved."
    redirect_to @url
    else
     render :new
    end
  end

  def show 
    @url = Url.find(params[:id])
    'short' + @url.to_s
  end

private 

 def url_params
    params.require(:url).permit(:long_url)
  end    
end

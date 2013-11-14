class UrlsController < ApplicationController

  def new
    @url = Url.new
  end

 def create
    @url = Url.new(url_params)
    if @url.save
      redirect_to @url, notice: "Consider your URL shortened"
    else
     render :new
    end
  end

  def show 
    @url = Url.find(params[:id])
  end

private 

 def url_params
    params.require(:url).permit(:long_url)
  end    
end

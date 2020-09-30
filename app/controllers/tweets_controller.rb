class TweetsController < ApplicationController
  def index
    @Tweets = Tweet.all
  end
  
  def new
    @Tweet = Tweet.new
  end
  
  def create
    @Tweet = Tweet.new(message: params[:tweet][:message], tdate:
    Time.current)
    if @Tweet.save
    redirect_to '/'
    else
    render 'new'
    end
  end
  
  def destroy
    tweet = Tweet.find(params[:id])
    tweet.destroy
    redirect_to '/'
  end
  
  def show
    @tweet = Tweet.find(params[:id])
  end
  
  def edit
   @tweet = Tweet.find(params[:id])
  end
  
  def update
    tweet = Tweet.find(params[:id])
    tweet.update(message: params[:tweet][:message])
    redirect_to '/'
  end
end

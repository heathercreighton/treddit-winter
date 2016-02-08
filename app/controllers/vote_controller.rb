class VoteController < ApplicationController
  def upvote
  	link = Link.find(params[:id])
  	link.score += 1
  	link.save

    if params[:origin] == "show"
      redirect_to link
    else
    	redirect_to root_path
    end
  end

  def downvote
  	link = Link.find(params[:id])
  	link.score -= 1
  	link.save

  	if params[:origin] == "show"
      redirect_to link
    else
      redirect_to root_path
    end
  end
end

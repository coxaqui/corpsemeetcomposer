class ViewerController < ApplicationController
  
  def show
    if ( Page.find_by_name(params[:name]).class != NilClass)
      @page = Page.find_by_name(params[:name])
    else
      pagename = 'error'
      @page = Page.find_by_name('error')
    end
    
  end

end

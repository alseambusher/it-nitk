class PageRouterController < ApplicationController
  def page
    begin
      @page = Page.where(id: params[:id])[0].description
    rescue
      begin
        @page = Page.where(title: params[:id])[0].description
      rescue
        render :file => "#{Rails.root}/public/404.html", :status => 404
      end
    end
  end
end

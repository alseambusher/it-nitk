class WelcomeController < ApplicationController
  def index
    # todo order by date and add
    @data = {}
    @data["alerts"] = Alert.all
    @data["slide_show"] = SlideShow.all[1..-1]
    @data["slide_show_active"] = SlideShow.all.first!
    @data["about"] = Page.all.find_all_by_title("About")[0]
  end
end

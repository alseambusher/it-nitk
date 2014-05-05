class WelcomeController < ApplicationController
  def index
    @data = {}
    # todo fetch more and handle in the ui
    @data["alerts"] = Alert.order("date desc").limit(4)
    @data["events"] = Event.order("date desc").limit(6)
    @data["slide_show"] = SlideShow.all[1..-1]
    @data["slide_show_active"] = SlideShow.all.first!
    @data["about"] = Page.all.find_all_by_title("About")[0]
  end
end

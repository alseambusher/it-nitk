class WelcomeController < ApplicationController
  def index
    # todo order by date and add
    @alerts = Alert.all
  end
end

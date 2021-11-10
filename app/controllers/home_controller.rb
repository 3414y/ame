class HomeController < ApplicationController
  def top
    @seiseki = Seiseki.find_by("user_id = ? ",current_user.id)
  end
end

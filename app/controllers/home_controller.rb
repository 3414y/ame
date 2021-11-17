class HomeController < ApplicationController
  def top
    @seiseki = Seiseki.find_by("user_id = ? ",current_user.id)
    @situmons = Situmon.where("user_id = ? ",current_user.id)
    @hentocount = 0 
     @situmons.each do |s| 
      @hentocount = @hentocount + s.kaitous.length
    end 
  end
end

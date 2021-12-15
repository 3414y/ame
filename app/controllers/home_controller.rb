class HomeController < ApplicationController
  def top
    @seiseki = Seiseki.find_by("user_id = ? ",current_user.id)
    @situmons = Situmon.where("user_id = ? ",current_user.id)
    @hentocount = 0 
     @situmons.each do |s|
      s.kaitous.each do |k|
        if k.kidoku == 0
          @hentocount = @hentocount + 1
        end
      end  
    end 
  end
end

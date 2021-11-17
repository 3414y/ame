module SitumonsHelper
    
    def teacher?
        current_user.admin
    end

end

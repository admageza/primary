module Accessible
    extend ActiveSupport::Concern
    included do
        before_action :check_user
    end
    
    protected
    def check_user
        if current_admin_user
            flash.clear
            redirect_to(admin_user.dashboard_path) && return
        elsif current_user
            flash.clear
            redirect_to(authenticate_user!) && return
        end
    end
end
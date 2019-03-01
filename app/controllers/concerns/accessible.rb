module Accessible
    extend ActiveSupport::Concern
    included do
        before_action :check_user
    end
    
    
end
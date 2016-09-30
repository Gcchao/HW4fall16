class User < ActiveRecord::Base
    def User.create_user!(user_hash = {})
        if User.find_by user_id: (user_hash[:user_id])
            return false
        else
            session_token = SecureRandom.base64
            user_hash[:session_token] = session_token
            @user = User.create!(user_hash)
            return true
        end
    end
    

end

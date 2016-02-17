class LikeController < ApplicationController

def account_like(current_acount, post_id)
      likes.find(:first, :condition => ['account_id = ? AND slide_id= ?', current_account, slide_id]).nil?
    end
end

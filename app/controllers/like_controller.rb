class LikeController < ApplicationController

#def account_like(current_acount, post_id)
     # likes.find(:first, :condition => ['account_id = ? AND slide_id= ?', current_account, slide_id]).nil?
    #
    def likes
    	if not @slide.is_liked_by current_user
  form_for([@slide.pdf_file, @slide, @slide.likes.find_by(account_id: current_user.id)], html: {method: :delete}) do |f|
  f.submit
else
   form_for(@slide.likes.find_by(acount_id: current_user.id), url: slide_like_path(@slide), html: {method: :delete}) do |f|
f.submit
end

end

class Comment < ActiveRecord::Base
	def Comment_params
	params.require(:Comment).permit(:Messageboard_id, :text)
	end
	belongs_to :messageboard 
end

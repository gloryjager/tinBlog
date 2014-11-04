class Messageboard < ActiveRecord::Base

	def Messageboard_params
	params.require(:Messageboard).permit(:body, :title,:createat)
	end
	has_many :comments  
end

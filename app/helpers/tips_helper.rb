module TipsHelper
	def tips_params
		params.require(:tip).permit!
	end
end

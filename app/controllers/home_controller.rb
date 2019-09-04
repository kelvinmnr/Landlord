class HomeController < ApplicationController
	def index
		@maintanances = Maintanance.all
	end

end

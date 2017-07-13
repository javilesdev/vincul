class HomeController < ApplicationController
	def index
	end

	def landing
	end

	protected
		def set_layout
			if action_name == "landing"
				return "landing"
			end
			super
		end
end

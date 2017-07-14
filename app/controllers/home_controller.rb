class HomeController < ApplicationController
	def index
		@post = Post.new
		@posts = Post.all
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

class SearchesController < ApplicationController

	def new
		@searches=Search.new
	end
end

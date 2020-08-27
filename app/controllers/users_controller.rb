class UsersController < ApplicationController
	def dashboard
		@past_bookings = current_user.bookings.where("start_date < ?", Date.current)
		@future_bookings = current_user.bookings.where("start_date >= ?", Date.current)
	end
end

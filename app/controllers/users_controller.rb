class UsersController < ApplicationController
	def dashboard
		@past_bookings = current_user.bookings.where("date < ?", Date.current)
		@future_bookings = current_user.bookings.where("date >= ?", Date.current)
	end
end

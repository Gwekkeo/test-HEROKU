class ChargesController < ApplicationController

	def donation
	end

	def create
		 # Amount in cents
		# @don_float = params[:user_donation].to_f
		# @email = params[:stripeEmail]

		# @amount = (@don_float*100).to_i

		# customer = Stripe::Customer.create(
		#     :email => params[:stripeEmail],
		#     :source  => params[:stripeToken]
		# )

		# charge = Stripe::Charge.create(
		#     :customer    => customer.id,
		#     :amount      => @amount,
		#     :description => 'Rails Stripe customer',
		#     :currency    => 'eur'
		# )


		# if user_signed_in?
		# 	Don.create(user_id: current_user, don: @don_float)
		# else
		# 	Don.create(user_id: nil, don: @don_float)
		# end



		# rescue Stripe::CardError => e
		#   flash[:error] = e.message
		#   redirect_to don_path

		@email = params[:user][:email]
		puts "-"*60
		puts @email

		ContactMailer.contact(@email).deliver_now!
	end

	def donateurs
		@donateurs = Don.all
	end

end

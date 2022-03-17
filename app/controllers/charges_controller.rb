class ChargesController < ApplicationController
    def new
        @amount = calculate_order_amount
    end
    
    def create
        customer = Stripe::Customer.create({
            email: params[:stripeEmail],
            source: params[:stripeToken],
        })
    
        charge = Stripe::Charge.create({
            customer: current_user.id,
            amount: @amount,
            description: 'Rails Stripe customer',
            currency: 'usd',
        })
    
        rescue Stripe::CardError => e
            flash[:error] = e.message
            redirect_to new_charge_path
    end
end

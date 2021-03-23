class OrdersController < ApplicationController
  def new
    @artwork = Artwork.find(params[:artwork_id])

    Stripe.api_key = ENV['STRIPE_SK_TEST']
    @session = Stripe::Checkout::Session.create(
      payment_method_types: ['card'],
      success_url: order_success_url,
      cancel_url: order_cancel_url,
      line_items: [
        {
          name: @artwork.art_title,
          description: "by #{@artwork.artist.artist_name}"
          images: @artwork.artimage.attached? ? [@artwork.artimage.service_url] : [],
          amount: (@artwork.price * 100).to_i,
          currency: 'aud',
          quantity: 1
        }
      ]
    )
  end

  def success
    render html: "<h4>Thank you for your order.<h4>"
  end

  def cancel
    render html: "<h4>The order was cancelled.<h4>"
  end
end

const button = document.querySelector("[data-stripe='payment']")
const publicKey = button.getAttribute('data-public-key')
const sessionId = button.getAttribute('data-session-id')

button.addEventListener("click", () => {
  const stripe = Stripe(publicKey)

  stripe.redirectToCheckout({ sessionId })
})
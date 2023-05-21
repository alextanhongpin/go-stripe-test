include .env
export


run:
	@go run server.go

# https://dashboard.stripe.com/test/webhooks/create?endpoint_location=local
# $ stripe trigger payment_intent.succeeded
stripe-forward:
	@stripe listen --forward-to localhost:4242/webhook


install:
	@brew install stripe/stripe-cli/stripe # Install Stripe CLI


# https://stripe.com/docs/payments/checkout/fulfill-orders
stripe-login:
	@stripe login --api-key $(STRIPE_API_KEY) --interactive

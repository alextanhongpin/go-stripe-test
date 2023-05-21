# Accept a Payment with Stripe Checkout

Stripe Checkout is the fastest way to get started with payments. Included are some basic build and run scripts you can use to start up the application.

## Running the sample

1. Run the server

~~~
go run server.go
~~~

1. Go to [http://localhost:4242/checkout.html](http://localhost:4242/checkout.html)


## Sequence of event

```bash
2023-05-21 22:08:28   --> charge.succeeded [evt_3NACvvEJzBY848241JrZpAzh]
2023-05-21 22:08:28  <--  [200] POST http://localhost:4242/webhook [evt_3NACvvEJzBY848241JrZpAzh]
2023-05-21 22:08:29   --> checkout.session.completed [evt_1NACvwEJzBY84824FMT3cJwk]
2023-05-21 22:08:29  <--  [200] POST http://localhost:4242/webhook [evt_1NACvwEJzBY84824FMT3cJwk]
2023-05-21 22:08:29   --> payment_intent.created [evt_3NACvvEJzBY8482419P5PTmN]
2023-05-21 22:08:29   --> payment_intent.succeeded [evt_3NACvvEJzBY848241l930QnB]
2023-05-21 22:08:29  <--  [200] POST http://localhost:4242/webhook [evt_3NACvvEJzBY8482419P5PTmN]
2023-05-21 22:08:29  <--  [200] POST http://localhost:4242/webhook [evt_3NACvvEJzBY848241l930QnB]
2023-05-21 22:13:31   --> charge.refunded [evt_3NACvvEJzBY848241QSfJcKF]
2023-05-21 22:13:31  <--  [200] POST http://localhost:4242/webhook [evt_3NACvvEJzBY848241QSfJcKF]
```

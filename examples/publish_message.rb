require "bunny"

# Start a communication session with RabbitMQ
conn = Bunny.new
conn.start

# open a channel
ch = conn.create_channel
ch.confirm_select

# declare a queue
q  = ch.queue("test", durable: true)
q.publish("Hello, everybody!")

ch.wait_for_confirms

ch.close
# close the connection
conn.close


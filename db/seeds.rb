logger = Logger.new(STDOUT)
logger.level = Logger::INFO

logger.info("start")

if Order.all.count.positive?
  logger.info("delete all orders")
  Order.delete_all
end

logger.info("order count: #{Order.all.count}")
orders = []
100_000_000.times do |i|
  orders << { name: "order_#{i}", unique_array: [{ value: i }] }

  next unless ((i + 1) % 10_000).zero?

  Order.collection.insert_many(orders)
  orders = []
  logger.info "inserted #{(i + 1).to_formatted_s(:delimited)} orders"
end

logger.info("order count: #{Order.all.count}")

logger.info("end")

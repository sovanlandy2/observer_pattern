require "iron_worker_ng"
client = IronWorkerNG::Client.new
# launch 100 tasks in parallel
100.times do
  client.tasks.create("hello", foo: "bar")
end
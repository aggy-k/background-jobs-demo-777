class FakeJob < ApplicationJob
  queue_as :default

  def perform(*args)
    # Do something later
    puts "hello, this is a fake job."
    sleep 3
    puts "OK I'm done now"
  end
end

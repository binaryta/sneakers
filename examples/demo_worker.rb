$: << File.expand_path('../lib', File.dirname(__FILE__))
require 'sneakers' # don't forget to put gem "sneakers" in your Gemfile

class DemoWorker
  include Sneakers::Worker
  from_queue :test

  def work(msg)
    puts "Msg received: " + msg
  end
end

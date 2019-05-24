class FeedChannel < ApplicationCable::Channel
  def subscribed
    puts "im here" * 200
    stream_from "feed_channel"
  end

  def unsubscribed
    raise "error ?"
    # Any cleanup needed when channel is unsubscribed
  end
end

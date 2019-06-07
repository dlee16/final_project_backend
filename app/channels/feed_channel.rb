class FeedChannel < ApplicationCable::Channel
  def subscribed
    stream_from "feed_channel"
  end

  def unsubscribed
    raise "error ?"
  end
end

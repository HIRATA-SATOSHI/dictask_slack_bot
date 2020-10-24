require "slack-notify"
require 'clockwork'
require 'dotenv/load'
require 'active_support/time'
include Clockwork

sample = SlackNotify::Client.new(webhook_url:ENV['API'])

  handler do |job|
    if job
      sample.notify("testの投稿です！これはtestです！")
    end 
  end

every(3.seconds, 'job')



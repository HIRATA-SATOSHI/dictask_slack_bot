require "slack-notify"
require 'clockwork'
# ここに、slackにメッセージを送る処理を書き込む。
sample = SlackNotify::Client.new(webhook_url:ENV['API'])
sample.notify("testの投稿です！これはtestです！")

# 下記のgemをrequireすると、minutesなどの時間を指し示すメソッドを使えるようになるので、記述しておくことを推奨します。
require 'active_support/time'
module Clockwork
  # ここに、「どれくらいの周期で処理をするのか？」というClockworkのメソッドを記述します
  # ここに、slackで一定時間ごとに送りたい処理と設定を書き込みます
end
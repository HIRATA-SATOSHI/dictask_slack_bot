# 下記のgemをrequireすると、minutesなどの時間を指し示すメソッドを使えるようになるので、記述しておくことを推奨します。
require 'active_support/time'
require 'clockwork'
# include Clockwork
module Clockwork
  # ここに、「どれくらいの周期で処理をするのか？」というClockworkのメソッドを記述します
  # ここに、slackで一定時間ごとに送りたい処理と設定を書き込みます
  every(3.seconds, 'slack.job') do
    puts `ruby sample.rb`
  end
#   every( 3.seconds, 'slack.job')
end
# This is the actual bot config and command logic 
#! /usr/bin/env ruby

require 'cinch'

bot = Cinch::Bot.new do
  configure do |c|
    c.server = 'irc.freenode.net'
    c.user = 'BotName'
    c.nick = 'BotName'
    c.realname = 'My Bot'
    c.channels = '#your-channel-name'

  end

  on :message, "!hello" do |m|
    m.reply "Why hello there."
  end
end

bot.start

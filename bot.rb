# This is the actual bot config and command logic 
#! /usr/bin/env ruby

require 'cinch'

bot = Cinch::Bot.new do
  configure do |c|
    c.server = 'irc.dal.net'
    c.user = 'BotName'
    c.nick = 'BotName34'
    c.realname = 'My Bot'
    c.channels = '#go'

  end

  on :message, "!hello" do |m|
    m.reply "Why hello there."
  end
end

bot.start

require 'time'

module Soundcloud9000
  # handles proper time display
  # TODO: make this better looking or find an alternative
  module TimeHelper
    HOUR    = 1000 * 60 * 60
    MINUTE  = 1000 * 60
    SECONDS = 1000

    def self.duration(milliseconds)
      parts = [
        milliseconds / 1000 / 60 / 60,      # hours
        milliseconds / 1000 / 60 % 60,      # minutes
        milliseconds / 1000 % 60,           # seconds
      ]

      parts.shift if parts.first.zero?

      [parts.first, *parts[1..-1].map { |part| format('%02d', part) }].join('.')
    end
  end
end

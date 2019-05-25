require 'curses'
require_relative 'color'

module Soundcloud9000
  module UI
    # handles getting input from the user
    class Input
      MAPPING = {
        Curses::KEY_LEFT => :left,
        Curses::KEY_RIGHT => :right,
        Curses::KEY_DOWN => :down,
        Curses::KEY_UP => :up,
        Curses::KEY_CTRL_J => :enter,
        Curses::KEY_ENTER => :enter,
        ' ' => :space,
        'j' => :j,
        'k' => :k,
        's' => :s,
        'u' => :u,
        '1' => :one,
        '2' => :two,
        '3' => :three,
        '4' => :four,
        '5' => :five,
        '6' => :six,
        '7' => :seven,
        '8' => :eight,
        '9' => :nine,
        'f' => :f,
        'm' => :m,
        'h' => :h
      }.freeze

      def self.get(delay = 0)
        Curses.timeout = delay
        MAPPING[Curses.getch]
      end

      def self.getstr(prompt)
        Curses.setpos(Curses.lines - 1, 0)
        Curses.clrtoeol
        Curses.addstr(prompt)
        Curses.echo
        result = Curses.getstr
        Curses.noecho
        Curses.setpos(Curses.lines - 1, 0)
        Curses.addstr(''.ljust(Curses.cols))
        result
      end

      def self.message(output)
        Curses.setpos(Curses.lines - 1, 0)
        Curses.clrtoeol
        Curses.addstr(output)
      end

      def self.error(output)
        Curses.setpos(Curses.lines - 1, 0)
        Curses.clrtoeol
        Curses.attron(Color.get(:red)) { Curses.addstr(output) }
      end
    end
  end
end

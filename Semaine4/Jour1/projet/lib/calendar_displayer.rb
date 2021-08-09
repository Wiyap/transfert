require 'pry'
require 'nokogiri'
require 'open-uri'
require 'watir'
require 'dotenv'
require 'twitter'
require 'rubocop'
require 'launchy'

require_relative 'event'

class CalendarDisplayer
  

  def line
    puts "-----------------------------------------------------------------------"
  end

  def week
    a ="|         |         |         |         |         |         |         |\n
|         |         |         |         |         |         |         |\n
|         |         |         |         |         |         |         |\n
|         |         |         |         |         |         |         |\n"
    return a
  end


  def place_event(start,w_end,a)
    all_event = Event.all
    all_event.each do |n|
      h = n
      i = 0
      if h.start_date.day <= w_end && h.start_date.day >= start
        if h.start_date.day > 7
          jour = (h.start_date.day)%7
            if jour == 0
              jour = 1
            end
        else
          jour = h.start_date.day
        end
        heure = h.start_date.strftime("%I:%M %p")
        a[(((jour-1)*10)+1+(i*73))..(((jour-1)*10)+(heure.length)+(i*73))] = heure
        title_split = h.title.split
        while title_split != [] && i < 3
          i += 1

          if title_split[0].length <= 9 && (title_split[0..1].join(" ").length) >=9

          a[(((jour-1)*10)+1+(i*73))..(((jour-1)*10)+(title_split[0].length)+(i*73))] = title_split[0]
          title_split.slice!(0)

          elsif (title_split[0..1].join(" ")).length <= 9 
            title_length = (title_split[0..1].join(" ")).length

            a[(((jour-1)*10)+1+(i*73))..(((jour-1)*10)+(title_length)+(i*73))] = title_split[0..1].join(" ")
            
            title_split.slice!(0..1)

          
          else 
            part_one = title_split[0][0..7] + "-"
            part_two = "-" + title_split[8..]
            a[(((jour-1)*10)+(i*73))..(((jour-1)*10)+(part_one.length)+(i*73))] = part_one
            
            if title_split[1].length < (9-part_two.length)
              a[(((jour-1)*10)+(i*73)+(part_two.length))..(((jour-1)*10)+(title_split.length)+(i*73))] = title_split[1]
              title_split.slice!(0..1)

            else
              title_split.slice!(0)
            end
          end
        end
      end
    end
    return a
  end
      

  def week_one
    i = 0
    all_event = Event.all
    line
    puts "|1        |2        |3        |4        |5        |6        |7        |"
    all_event.each do |n|
      if n.start_date.day <= 7
        i += 1
      end
    end
    a = 0
    a = place_event(1,7,week) 
    puts a
  end

  def week_two
    i = 0
    all_event = Event.all
    line
    puts "|8        |9        |10       |11       |12       |13       |14       |"
    a = 0
    a = place_event(8,14,week)
    puts a
  end

  def week_three
    i = 0
    all_event = Event.all
    line
    puts "|15       |16       |17       |18       |19       |20       |21       |"
    a = 0
    a = place_event(15,21,week)
    puts a
  end

  def week_four
    all_event = Event.all
    i = 0
    line
    puts "|22       |23       |24       |25       |26       |27       |28       |"
    a = 0
    a = place_event(22,28,week)
    puts a
  end

  def week_five
    all_event = Event.all
    i = 0
    line
    puts"|29       |30       |31       |         |         |         |         |"
    a = 0
    a = place_event(28,31,week)
    puts a
    line
  end

  def perform
    week_one
    week_two
    week_three
    week_four
    week_five
  end
end
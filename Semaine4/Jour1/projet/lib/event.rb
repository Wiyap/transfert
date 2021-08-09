require 'pry'
require 'nokogiri'
require 'open-uri'
require 'watir'
require 'dotenv'
require 'twitter'
require 'rubocop'
require 'launchy'


class Event
  attr_accessor :start_date, :duration, :title, :attendees
  @@all_event = []

  def initialize(start_date,duration,title,attendees)
    @start_date = Time.parse(start_date)
    @duration = duration
    @title = title
    @attendees = attendees
    @@all_event << self
  end

  def postpone_24h
    @start_date = start_date + 24*60*60
    return @start_date
  end

  def end_date
    return @start_date + @duration*60
  end

  def is_past?
    return Time.now > @start_date
  end

  def is_futur?
    return Time.now < @start_date
  end

  def is_soon?
    return ((@start_date-(30*60))..@start_date) === Time.now
  end

  def to_s
    puts "Titre: #{@title}"
    puts "Date de début: #{@start_date}"
    puts "Durée: #{@duration} minutes"
    puts "Invités: #{@attendees.join(", ")}"
  end

  def self.all
    return @@all_event
  end
end

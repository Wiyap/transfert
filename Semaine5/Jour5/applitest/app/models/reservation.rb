class Reservation < ApplicationRecord
  belongs_to :listing
  belongs_to :guest, class_name: "User"
  validate :start_must_be_before_end_date
  validate :overlaping_reservation?

  def start_must_be_before_end_date
    errors.add(:start_date, "must be before end date") unless start_date < end_date
  end 

  def duration
    duration = self.end_date - self.start_time
    return duration.to_f.round(2)
  end

  def period
    self.start_date..self.end_date
  end

  def overlaping_reservation?
    Reservation.where(listing_id: self.listing_id).each do |n|
      if (self.start_date..self.end_date).overlaps?(n.start_date..n.end_date)
        return errors.add(:start_date, "Already booked")
      end
    end
  end
end

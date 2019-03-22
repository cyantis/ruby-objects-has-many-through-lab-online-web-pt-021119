class Patient
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(date, doctor)
    Appointment.new(date, self, doctor)
  end

  def appointments
    Appointment.all.select {|pat| pat.patient == self}
  end

  def patients
    Appointment.all.find_all{|p| p.patient == self}.collect {|d| d.doctor}
  end

end

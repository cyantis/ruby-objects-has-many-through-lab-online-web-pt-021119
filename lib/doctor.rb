class Doctor
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(patient, date)
    Appointment.new(patient, self, date)
  end

  def appointments
    Appointment.all.select {|d| d.doctor == self}
  end

  def patients
    Appointment.all.find_all {|d| d.doctor == self}.collect {|p| p.patient}
  end

end

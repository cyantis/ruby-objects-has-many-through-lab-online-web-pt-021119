class Patient
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  

  def appointments
    Appointment.all.select {|p| p.patient == self}
  end

  def patients
    Appointment.all.find_all{|p| p.patient == self}.collect {|d| d.doctor}
  end

end

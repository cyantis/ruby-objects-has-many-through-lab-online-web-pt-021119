class Doctor
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_appointment(date, patient)
    Appointment.new(date, patient, self)
  end

  def appointments
    Appointment.all.select {|d| d.doctor == self}
  end

  def patients
    Appointment.all.find_all{|d| d.doctor == self}.coll
  end

end

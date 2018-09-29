class Doctor
  attr_accessor 
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(date, patient)
    Appointment.new(patient, self, date)
  end
  
  def appointments
    self.appointments.select do |appointment|
      appointments
    end 
  end 

  def patients
    self.appointments.collect do |appointment|
      appointment.patient
    end
  end

end

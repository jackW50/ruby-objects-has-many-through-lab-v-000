class Patient
  attr_accessor 
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_appointment(doctor, date)
    Appointment.new(self, doctor, date)
  end

  def self.all
    @@all
  end
  
  def appointments 
    Appointment.all.select

  def doctors
    self.appointments.collect do |appointment|
      appointment.doctor
    end
  end

end 
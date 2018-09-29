class Patient
  attr_accessor 
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_appointment(doctor, date)
    new_appointment = Appointment.new(self, doctor, date)
    self.appointments << new_appointment
  end

  def self.all
    @@all
  end

  def doctors
    self.appointments.select do |appointment|
      appointment.doctor
    end
  end

end 
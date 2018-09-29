class Doctor
  attr_accessor :appointments
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
    @appointments = []
  end

  def self.all
    @@all
  end

  def new_appointment(date, patient)
    new_appointment = Appointment.new(patient, self, date)
    self.appointments << new_appointment
  end
  
  #def appointments
   # self.appointments.select do |appointment|
   #   appointments
   # end 
  #end 

  def patients
    self.appointments.select do |appointment|
      appointment.patient
    end
  end

end

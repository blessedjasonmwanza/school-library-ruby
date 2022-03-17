require_relative './nameable'
class Person
  attr_accessor :name, :age
  attr_reader :id

  def initialize(age, name = 'Unknown', parent_permission: true)
    @id = Random.rand(1..1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
    @nameable = Nameable.new
  end

  def validate_name
    @name = @nameable.correct_name(name)
  end

  private

  def of_age?
    @age >= 18
  end

  public

  def can_use_services?
    of_age? || parent_permission == true
  end
end

person = Person.new(100, 'blessedjasonmanza')
person.validate_name

puts person.name
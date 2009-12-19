class Person < ActiveRecord::Base
  set_primary_key :person_id
  set_table_name :persons

  has_one :user

  validates_presence_of :first_names
  validates_length_of :first_names, :allow_nil => false, :maximum => 100
  validates_presence_of :last_name
  validates_length_of :last_name, :allow_nil => false, :maximum => 100

  def full_name
    Person::full_name_formatter(first_names, last_name)
  end

  def self.full_name_formatter(first_names, last_name)
     if last_name == 'Unknown'
      [first_names, last_name].join(" ")  
    else
      [first_names, last_name_initial(last_name)].join(" ")
    end
  end

  def self.last_name_initial(last_name)
    last_name[0,1]
  end

end

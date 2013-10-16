# Solution for Challenge: ActiveRecord, Jr. 2: SQL Be Gone. Started 2013-08-22T01:04:17+00:00
 
class Cohort < Database::Model
 
  self.attribute_names =  [:id, :name, :created_at, :updated_at]
 
  attr_reader :attributes, :old_attributes
 
  # e.g., Cohort.new(:id => 1, :name => 'Alpha', :created_at => '2012-12-01 05:54:30')
 
  def initialize(attributes = {})
    super
  end
 
  def students
    Student.where('cohort_id = ?', self[:id])
  end
 
  def add_students(students)
    students.each do |student|
      student.cohort = self
    end
 
    students
  end
 
end
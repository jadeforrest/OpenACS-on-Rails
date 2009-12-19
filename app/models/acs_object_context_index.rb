class AcsObjectContextIndex < ActiveRecord::Base
  validates_presence_of :n_generations
  validates_numericality_of :n_generations, :allow_nil => false, :only_integer => true
end

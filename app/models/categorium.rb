class Categorium < ActiveRecord::Base
	has_many :subcategorium, :dependent => :destroy
end

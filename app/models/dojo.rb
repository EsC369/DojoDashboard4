class Dojo < ActiveRecord::Base
    validates :branch, :street, :city, :state, presence: true # check if all is included
    validates :state, length: { is: 2 } # check state is only 2 characters
    has_many :students # relations ALWAYS ADD
    before_validation :upper_state # before any other validations, check if state is upper case from method below
    def upper_state  # Method that checks if state is uppercase
        self.state.upcase!
    end
end

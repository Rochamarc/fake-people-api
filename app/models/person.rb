class Person < ApplicationRecord
    has_one :ssn
    has_one :identity

    accepts_nested_attributes_for :ssn
    accepts_nested_attributes_for :identity

end

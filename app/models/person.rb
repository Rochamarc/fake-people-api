class Person < ApplicationRecord
    has_one :ssn

    accepts_nested_attributes_for :ssn
end

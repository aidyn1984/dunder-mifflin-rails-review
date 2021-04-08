class Employee < ApplicationRecord
    belongs_to :dog

    # validates :alias, uniqueness: { scope: :year,
    # message: "This alias is already taken!" }


    def full_name
        "#{first_name} #{last_name}"
    end
end

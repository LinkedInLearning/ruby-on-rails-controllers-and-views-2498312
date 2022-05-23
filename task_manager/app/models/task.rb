class Task < ApplicationRecord

  belongs_to :category, optional: true

end

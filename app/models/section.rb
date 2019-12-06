class Section < ApplicationRecord
  acts_as_taggable_on :tags
end

class Entry < ApplicationRecord
    has_many :comments
    belongs_to :createby, class_name: "Account"
    accepts_nested_attributes_for :comments, allow_destroy: true, reject_if: :all_blank

end

class Entry < ApplicationRecord
    has_many :comments
    has_many :timelines
    belongs_to :createby, class_name: "Account"
    accepts_nested_attributes_for :comments, allow_destroy: true, reject_if: :all_blank

    validates :title, presence: true 
    validates :contents, presence: true 

end

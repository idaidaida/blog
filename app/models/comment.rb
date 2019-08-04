class Comment < ApplicationRecord
    belongs_to :entry
    belongs_to :commenter, class_name: "Account"
end

class CommentTagging < ApplicationRecord
  belongs_to :tag
  belongs_to :comment
end

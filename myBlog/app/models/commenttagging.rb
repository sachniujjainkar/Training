class Commenttagging < ApplicationRecord
  belongs_to :commenttag
  belongs_to :taggable, :polymorphic => true
end

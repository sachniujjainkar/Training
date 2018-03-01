class Comment < ApplicationRecord
	belongs_to :post

	has_many :ttaggings
  has_many :ttags, through: :ttaggings

  def self.ttagged_with(name)
    Ttag.find_by!(name: name).comments
  end

  def self.ttag_counts
    Ttag.select('ttags.*, count(ttaggings.ttag_id) as count').joins(:ttaggings).group('ttaggings.ttag_id')
  end

  def ttag_list
    ttags.map(&:name).join(', ')
  end

  def ttag_list=(names)
    self.ttags = names.split(',').map do |n|
      Ttag.where(name: n.strip).first_or_create!
    end
  end
end

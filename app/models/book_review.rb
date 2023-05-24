class BookReview < ApplicationRecord
  belongs_to :library
  belongs_to :member
  belongs_to :book
  belongs_to :rating

  validates_presence_of :comment, :reviewdate
  validate :datereview_up_to_present
  def datereview_up_to_present
    if datereview.present? && datereview > Time.now
      errors.add(:datereview, 'Thời gian không hợp lệ. Vui lòng chọn thời gian trong quá khứ hoặc hiện tại.')
    end
  end
end

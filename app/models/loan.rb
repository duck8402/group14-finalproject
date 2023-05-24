class Loan < ApplicationRecord
  belongs_to :library
  belongs_to :member
  belongs_to :book

  validates_presence_of :loanid, :loan_date, :due_date, :return_date
  
  validate :valid_loan_date
  def valid_loan_date
    if loan_date.present? && loan_date > Date.today
      errors.add(:loan_date, "must be in the present or past")
    end
  end

  validate :valid_due_date
  def valid_due_date
    if due_date.present? && due_date < Date.current + 30.days
      errors.add(:starttime, "must be within the next 30 days")
    end
  end
  
  validate :valid_return_date
  def valid_return_date
    if return_date.present? && return_date < Date.today
      errors.add(:return_date, "must be in the present or future")
    end
  end

end

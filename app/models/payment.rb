# == Schema Information
#
# Table name: payments
#
#  id         :integer          not null, primary key
#  email      :string
#  token      :string
#  tenant_id  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Payment < ApplicationRecord
  belongs_to :tenant
  attr_accessor :card_number, :card_cvv, :card_expires_month, :card_expires_year

  def self.month_options
    Date::MONTHNAMES.compact.each_with_index.map { |name,i| ["#{i+1} - #{name}", i+1] }
  end

  def self.year_options
    (Date.today.year..(Date.today.year+10)).to_a
  end

  def process_payment
    customer = Stripe::Customer.create email: email, card: token

    Stripe::Charge.create customer: customer.id,
                          amount: 1000,
                          description: 'Premium',
                          currency: 'usd'

  end
end

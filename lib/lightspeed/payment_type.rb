require_relative 'resource'

module Lightspeed
  class PaymentType < Lightspeed::Resource
    alias_method :archive, :destroy

    fields(
      paymentTypeID: :id,
      name: :string,
      requiredCustomer: :boolean,
      archived: :boolean,
      internalReserved: :boolean,
      type: :string,
      refundAsPaymentTypeID: :integer
    )
  end
end

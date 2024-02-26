class ClientSerializer < ActiveModel::Serializer
  attributes :id, :injuries, :goals, :credits, :bundle_plan, :membership_plan, :subscription_exp_date, :renew_subscription, :account
end

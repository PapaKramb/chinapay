require "rails_helper"

RSpec.describe UserPolicy, type: :policy do
  let!(:user) { FactoryBot.create(:user) }
  let!(:context) { { user: user } }

  describe_rule :index? do
    succeed 'when user is admin' do
      before { user.role = :admin }
    end

    failed 'when user is not admin' do
      before { user.role != :admin }
    end
  end

  describe_rule :destroy? do
    succeed 'when user is admin' do
      before { user.role = :admin }
    end

    failed 'when user is not admin' do
      before { user.role != :admin }
    end
  end
end

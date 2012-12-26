require 'spec_helper'
require 'support/fixtures/flower'

describe Lotus::Model do
  describe 'when included' do
    it 'provides a database gateway' do
      database_gateway = Flower.new.record
      database_gateway.should be_a(Flower::Record)
    end
  end
end

require 'spec_helper'
require 'support/fixtures/flower'

describe Lotus::Model::ORM do
  describe 'factory' do
    subject { Lotus::Model::ORM[Flower] }

    its(:table_name) { should == :flowers }
  end
end

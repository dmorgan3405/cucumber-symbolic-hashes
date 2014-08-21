require 'rspec'
require 'cucumber/ast/table'
require_relative '../lib/cucumber-symbolic-hashes'

module Cucumber
  module Ast
    describe '#symbolic_hashes' do
      before do
        @table = Table.new([['Foo Bar', 'Bar Two Who', 'Foo Three'], %w{1 22 333}])
      end

      it 'should return hash with symbolized keys' do
        @table.symbolic_hashes.should == [{:foo_bar => '1', :bar_two_who => '22', :foo_three => '333'}]
      end

    end

  end
end

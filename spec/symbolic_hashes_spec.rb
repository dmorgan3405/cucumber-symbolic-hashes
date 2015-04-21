require 'rspec'
require 'cucumber/core/ast/data_table'
require 'cucumber/multiline_argument/data_table'
require 'cucumber/multiline_argument/data_table'

require_relative '../lib/cucumber-symbolic-hashes'

module Cucumber
  module MultilineArgument
    describe '#symbolic_hashes' do

      it 'should symbolize single key' do
        ast_table = Cucumber::Core::Ast::DataTable.new([['Foo Bar'], %w{1}], nil)
        data_table = DataTable.new(ast_table)
        expect(data_table.symbolic_hashes).to eq([{:foo_bar => '1'}])
      end


      it 'should symbolize multiple keys' do
        ast_table = Cucumber::Core::Ast::DataTable.new([['Foo Bar', 'Bar Two Who', 'Foo Three'], %w{1 22 333}], nil)
        data_table = DataTable.new(ast_table)
        expect(data_table.symbolic_hashes).to eq([{:foo_bar => '1', :bar_two_who => '22', :foo_three => '333'}])
      end

      it 'should be able to be accessed multiple times' do
        ast_table = Cucumber::Core::Ast::DataTable.new([['Foo Bar', 'Bar Two Who', 'Foo Three'], %w{1 22 333}], nil)
        data_table = DataTable.new(ast_table)

        data_table.symbolic_hashes

        expect{data_table.symbolic_hashes}.to_not raise_error
      end

    end

  end
end

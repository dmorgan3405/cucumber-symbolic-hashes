require 'rspec'
require 'cucumber/ast/table'
require_relative '../lib/cucumber-symbolic-hashes'

module Cucumber
  module Ast
    describe '#symbolic_hashes' do

      it 'should symbolize single key' do
        ast_table = Table.new([['Foo Bar'], %w{1}])
        expect(ast_table.symbolic_hashes).to eq([{:foo_bar => '1'}])
      end


      it 'should symbolize multiple keys' do
        ast_table = Table.new([['Foo Bar', 'Bar Two Who', 'Foo Three'], %w{1 22 333}])
        expect(ast_table.symbolic_hashes).to eq([{:foo_bar => '1', :bar_two_who => '22', :foo_three => '333'}])
      end

      #defect found 
      it 'should be able to be accessed multiple times' do
        ast_table = Table.new([['Foo Bar', 'Bar Two Who', 'Foo Three'], %w{1 22 333}])
        
        symbolized_hash = ast_table.symbolic_hashes

        expect(ast_table.symbolic_hashes).to eq([{:foo_bar => '1', :bar_two_who => '22', :foo_three => '333'}])
      end

    end

  end
end

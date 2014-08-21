# cucumber-symbolic-hashes

A very simple extension gem used to remove duplication in cucumber test suites. 

# Example Usage
````ruby
Given(/^the following employees exist:$/) do |employee_table|
  #employee_table is a employee_table.hashes.keys # => [:First Name, :Last Name]

  employee_table.symbolic_hashes.each do |employee|
		#employee = {:first_name => 'John', :last_name => 'Doe'}
		FactoryGirl.create(:employee, employee)
  end
end
````

No mapping code is needed. 
    
# Further Information

Link to blog post on why to use this extension: 

http://douglasmorgan.blogspot.com/2014/06/cucumberasttablesymbolichashes.html

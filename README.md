# cucumber-symbolic-hashes

A very simple extension gem used to remove duplication in cucumber test suites. 

# Example Usage
````ruby
Given(/^the following employees exist:$/) do |employee_table|
  employee_table.symbolic_hashes.each do |employee_hash|
    EmployeeFactory.create_from(employee_hash)
  end
end
````
    

Blog post on why to use this extension: 

http://douglasmorgan.blogspot.com/2014/06/cucumberasttablesymbolichashes.html

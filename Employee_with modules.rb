class Employee
	attr_reader :name, :email
	def initialize (name, email)
		@name = name
		@email = email
	end
end

class HourlyEmployee < Employee
	include Payroll.calculate_salary_hourly
    def initialize(name, email, hourly_rate, hours_worked)
        @name = name
        @email = email
        @hourly_rate = hourly_rate
        @hours_worked = hours_worked
    end
end

class SalaryEmployee < Employee
	include Payroll.calculate_salary
	attr_accessor
	def initialize(name, email, salary)
		@name = name
		@email = email
		@salary = salary
	end
end

class MultiPaymentEmployee < Employee
	include Payroll.calculate_salary_multi
	def initialize(name, email, base_salary, hourly_rate, hours_worked)
		@name = name
		@email = email
		@base_salary = base_salary
		@hourly_rate = hourly_rate
		@hours_worked = hours_worked
	end

	def calculate_salary
		if @hours_worked > 40
			(@base_salary/52 + (@hourly_rate * (@hours_worked-40))).to_f
		else 
			(@base_salary / 52).to_f
		end
	end
end

module Payroll
	def calculate_salary_hourly
      (@hourly_rate * @hours_worked).to_f
    end

	def calculate_salary
		(@salary / 52).to_f
	end

	def calculate_salary_multi
		if @hours_worked > 40
			(@base_salary/52 + (@hourly_rate * (@hours_worked-40))).to_f
		else 
			(@base_salary / 52).to_f
		end
	end
end

employees = [
	josh = HourlyEmployee.new('Josh', 'nachoemail@example.com', 35, 50),
	nizar = SalaryEmployee.new('Nizar', 'starcraftrulez@gmail.com', 1000000),
	ted = MultiPaymentEmployee.new('Ted', 'fortranr0x@gmail.com', 60000, 275, 55),
	jason = HourlyEmployee.new('Jason', 'jason@email.com', 15, 40),
	sofia = HourlyEmployee.new('Sofia', 'borgessofia22@gmail.com', 15, 40)
]

josh.calculate_salary
nizar.calculate_salary
ted.calculate_salary
jason.calculate_salary
sofia.calculate_salary

class Payroll
	attr_accessor
    def initialize(employees)
        @employees = employees
    end

    def notify_employee(employee)
    	puts "To #{employee.email} ! You have just been paid!"
  	end

    def pay_employees
    	total = 0
    	@employees.each do |employee|
    		total += employee.calculate_salary
    		puts "#{employee.name} => #{((employee.calculate_salary) * (1-0.18)).round(2)}"
    	end
    	puts "Total amount spent on payroll this week:"
    	puts total
    end

end

payroll = Payroll.new(employees)
payroll.pay_employees
payroll.notify_employee(sofia)
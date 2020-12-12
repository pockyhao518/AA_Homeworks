class Employee 
    attr_reader :name, :title, :salary, :boss

    def initialize(name, title, salary, boss = nil)
        @name = name
        @title = title 
        @salary = salary
        @boss = boss
    end

    def bonus (multiplier)
        bonus = @salary * multiplier
    end

    def boss=(manager)
        @boss = manager
        manager.children(self)
    end
end


class Manager < Employee #super class 
    #should have an attribute that holds an array of all employees assigned to the manager
    attr_reader :subemployees
    def initialize(name, title, salary, boss)
        
        @subemployees = []
        super
    end

    def children (employee)
        @subemployees << employee
    end

    def bonus(multiplier)
        sum = 0
        return salary * multiplier if subemployees.empty?
        @subemployees.each do |employee|
            if employee.is_a?(Manager)
                sum += employee.salary * multiplier + employee.bonus(multiplier)
            else
                sum += employee.bonus(multiplier)
            end
        end
        sum
    end
end

p ned = Manager.new('Ned','Founder',1000000, nil)
p darren = Manager.new('Darren','TA Manager',78000, 'Ned')
p david = Employee.new('David','TA',10000, 'Darren')
p shawna = Employee.new('Shawna','TA',12000, 'Darren')

shawna.boss = darren
david.boss = darren
darren.boss = ned

p ned.bonus(5) # => 500_000
p darren.bonus(4) # => 88_000
p david.bonus(3) # => 30_000

select e.firstName 'Employee First', 
  e.lastName 'Employee Last', 
  e.title 'Employee Title',
  m.firstName 'Manager First', 
  m.lastName 'Manager Last' 
from employee e 
left join employee m on e.managerId = m.employeeId;
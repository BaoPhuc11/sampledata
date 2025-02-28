USE LeaveManagement;
GO

INSERT INTO Teams (name) VALUES 
('HR'), 
('IT'), 
('Finance');

INSERT INTO Employees (name, email, password, team_id) VALUES 
('John Doe', 'john.doe@example.com', 'hashed_password1', 1),
('Jane Smith', 'jane.smith@example.com', 'hashed_password2', 2),
('Alice Johnson', 'alice.johnson@example.com', 'hashed_password3', 3);


INSERT INTO Roles (name) VALUES 
('Admin'), 
('Manager'), 
('Employee');


INSERT INTO Features (name, endpoint) VALUES 
('Manage Employees', '/employees'),
('Approve Leave Requests', '/leave/approve'),
('View Work Schedule', '/schedule/view');


INSERT INTO Employee_Roles (employee_id, role_id) VALUES 
(1, 1),  
(2, 2),  
(3, 3);  


INSERT INTO Role_Features (role_id, feature_id) VALUES 
(1, 1), 
(2, 2), 
(3, 3); 


INSERT INTO Leave_Requests (employee_id, start_date, end_date, reason, status) VALUES 
(1, '2025-03-10', '2025-03-15', 'Family vacation', 'Pending'),
(2, '2025-04-05', '2025-04-07', 'Medical leave', 'Approved'),
(3, '2025-05-12', '2025-05-14', 'Personal reasons', 'Rejected');


INSERT INTO Leave_Request_History (leave_request_id, action, reason, processed_at) VALUES 
(1, 'Submitted', NULL, '2025-03-01 10:00:00'),
(2, 'Approved', 'Verified medical leave', '2025-03-02 11:30:00'),
(3, 'Rejected', 'Insufficient leave balance', '2025-03-03 14:00:00');


INSERT INTO Work_Schedule (employee_id, work_date, status) VALUES 
(1, '2025-03-01', 'Present'),
(2, '2025-03-01', 'Present'),
(3, '2025-03-01', 'Absent');

GO

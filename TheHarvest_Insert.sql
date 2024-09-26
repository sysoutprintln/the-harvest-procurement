INSERT INTO MsMaterial (MaterialID, MaterialName, Stock, Price) 
VALUES
('MA001', 'Flour', 250, 10000),
('MA002', 'Egg', 250, 26000),
('MA003', 'Margarine', 250, 21000),
('MA004', 'Water', 300, 25000),
('MA005', 'Sugar', 350, 50000),
('MA006', 'Cheese', 200, 30000),
('MA007', 'Milk', 150, 15000),
('MA008', 'Chocolate', 100, 40000),
('MA009', 'Bread', 250, 20000),
('MA010', 'Butter', 200, 25000);

INSERT INTO MsStaff (StaffID, StaffName, Position, DoB, Email) 
VALUES
('ST001', 'Rendy', 'Manager', '1995-05-29', 'rendy@harvest.com'),
('ST002', 'Justin', 'Warehouse Staff', '2000-02-07', 'justin@harvest.com'),
('ST003', 'Syauqi', 'Finance Staff', '1998-04-19', 'syauqi@harvest.com'),
('ST004', 'Yusuf', 'Warehouse Staff', '2000-11-11', 'yusuf@harvest.com'),
('ST005', 'Andika', 'Finance Staff', '1999-09-21', 'andika@harvest.com');

INSERT INTO MsSupplier (SupplierID, SupplierName, SupplierContact, SupplierAddress) 
VALUES
('SU001', 'Tepung Emas Ltd', '088812349032', 'Jl. Kampak Terbang'),
('SU002', 'Indo Berkah', '081382733095', 'Jl. Matoa al Kahfi'),
('SU003', 'Ingredients company', '082219218767', 'Jl. Timur berkah'),
('SU004', 'Shoogar Ltd', '081635264839', 'Jl. Ahmudin'),
('SU005', 'Berkah Antoni', '083627482946', 'Jl. Barat Berkah');

INSERT INTO PurchaseRequisition (PurchaseReqID, StaffID, ApprovedBy, ApprovedDate) 
VALUES
('PR001', 'ST002', 'ST001', '2023-09-01'),
('PR002', 'ST002', 'ST001', '2023-09-01'),
('PR003', 'ST004', 'ST001', '2023-09-02'),
('PR004', 'ST004', 'ST001', '2023-09-03'),
('PR005', 'ST004', 'ST001', '2023-09-03');

INSERT INTO	RequisitionDetail (PurchaseReqID, MaterialID, Quantity) 
VALUES
('PR001', 'MA001', 250),
('PR001', 'MA003', 150),
('PR001', 'MA006', 250),
('PR002', 'MA004', 300),
('PR002', 'MA002', 450),
('PR002', 'MA001', 150),
('PR003', 'MA002', 235),
('PR003', 'MA007', 240),
('PR004', 'MA004', 100),
('PR004', 'MA009', 350),
('PR004', 'MA010', 250),
('PR005', 'MA005', 250),
('PR005', 'MA008', 130),
('PR005', 'MA004', 300),
('PR005', 'MA001', 350);

INSERT INTO PurchaseOrder (OrderID, PurchaseReqID, SupplierID, StaffID, PODate) 
VALUES
('OD001', 'PR001', 'SU001', 'ST002', '2023-09-02'),
('OD002', 'PR002', 'SU004', 'ST004', '2023-09-02'),
('OD003', 'PR003', 'SU003', 'ST002', '2023-09-03'),
('OD004', 'PR004', 'SU002', 'ST002', '2023-09-04'),
('OD005', 'PR005', 'SU005', 'ST004', '2023-09-04');

INSERT INTO Invoice (InvoiceID, OrderID, TotalAmount) 
VALUES
('IN001', 'OD001', 2500000),
('IN002', 'OD002', 6500000),
('IN003', 'OD003', 5250000),
('IN004', 'OD004', 7500000),
('IN005', 'OD005', 17500000);

INSERT INTO Payment (PaymentID, InvoiceID, StaffID, AmountPaid)
VALUES
('PM001', 'IN001', 'ST003', 2500000),
('PM002', 'IN002', 'ST003', 6500000),
('PM003', 'IN003', 'ST005', 5250000),
('PM004', 'IN004', 'ST005', 7500000),
('PM005', 'IN005', 'ST005', 17500000);


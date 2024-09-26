SELECT 
    rd.PurchaseReqID,
    rd.MaterialID,
    rd.Quantity,
    [Total Cost] = mm.Price * rd.Quantity
FROM RequisitionDetail rd
JOIN MsMaterial mm ON rd.MaterialID = mm.MaterialID;


SELECT 
    rd.PurchaseReqID,
    [Grand Total] = SUM(mm.Price * rd.Quantity)
FROM RequisitionDetail rd
JOIN MsMaterial mm ON rd.MaterialID = mm.MaterialID
GROUP BY rd.PurchaseReqID;


--SELECT * FROM MsMaterial
--SELECT * FROM MsStaff
--SELECT * FROM MsSupplier
--SELECT * FROM PurchaseRequisition
--SELECT * FROM RequisitionDetail
--SELECT * FROM PurchaseOrder
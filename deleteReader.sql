
-- Xoá 1 độc giả không nằm trong phiếu mượn hoặc nếu nằm trong phiếu mượn kiểm tra số lần mượn = số lần trả
DELETE
FROM DocGia 
WHERE 
	(MaDocGia NOT IN (
						SELECT MaDocGia 
						FROM PhieuMuon)
	OR  
	((
		SELECT COUNT(p.MaPM)
		FROM PhieuMuon p
		WHERE p.MaDocGia = 'DG0007'
		GROUP BY p.MaDocGia
	) = (
		SELECT COUNT(h.MaPM)
		FROM HoaDonTraSach h JOIN PhieuMuon p ON h.MaPM = p.MaPM
		WHERE p.MaDocGia = 'DG0007'
		GROUP BY h.MaPM)))
	AND MaDocGia = 'DG0007'

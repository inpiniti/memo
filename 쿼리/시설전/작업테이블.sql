-- 시설전 PDA 작업 테이블
SELECT 
ZIP.center_cd,
PW.*
FROM   C31.C3AT_FACI_BEF_PDA_WORK PW
       JOIN A11.A1AT_ZIP ZIP ON PW.ZIP_NO1 = ZIP.ZIP_NO1
WHERE  PW.REG_END_YN = 'Y'    -- 등록 종료 여부 Y
  AND  PW.CONF_YN    = 'N'    -- 확정 여부 N (진행 중인 건)
  -- AND ZIP.CENTER_CD = '사용자센터코드'  -- 필요 시 주석 해제하여 필터링
ORDER BY PW.WORK_NUM DESC;



-- 시설전 PDA 작업 테이블
select distinct a.UPD_EMPID, a.center_cd from ( 

SELECT 
PW.UPD_EMPID, ZIP.center_cd
FROM   C31.C3AT_FACI_BEF_PDA_WORK PW
       JOIN A11.A1AT_ZIP ZIP ON PW.ZIP_NO1 = ZIP.ZIP_NO1
WHERE  PW.REG_END_YN = 'Y'    -- 등록 종료 여부 Y
  AND  PW.CONF_YN    = 'N'    -- 확정 여부 N (진행 중인 건)
  -- AND ZIP.CENTER_CD = '사용자센터코드'  -- 필요 시 주석 해제하여 필터링
ORDER BY PW.WORK_NUM DESC) a;

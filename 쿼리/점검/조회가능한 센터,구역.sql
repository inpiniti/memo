-- 안전점검 조회가능한 (센터, 구역)

SELECT A.OBJ_YM           -- 대상년월
     , A.CENTER_CD        -- 센터코드
     , A.CHK_YEAR         -- 점검년도
     , A.CHK_ORDER        -- 점검차수
     , A.ZONE_MANAGE_NUM  -- 구역관리번호
     , COUNT(*) AS CNT    -- 대상 세대수
  FROM C31.C3CT_GENER_OBJ_PDA A  -- 일반점검(안전점검) 대상 테이블
 WHERE A.OBJ_YM = TO_CHAR(SYSDATE, 'YYYYMM') -- 이번 달 데이터 (예: 202601)
   AND NVL(A.SEND_YN, 'N') <> 'Y'             -- 아직 전송되지 않은(조회 가능한) 데이터
 GROUP BY A.OBJ_YM, A.CENTER_CD, A.CHK_YEAR, A.CHK_ORDER, A.ZONE_MANAGE_NUM
 ORDER BY CNT DESC;
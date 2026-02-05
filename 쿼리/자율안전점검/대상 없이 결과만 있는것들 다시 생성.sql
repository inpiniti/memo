        INSERT INTO  C31.C3CT_GENER_SELF_CHK_OBJ
        (
               USE_CONT_NUM
             , MTR_NUM
             , CHK_EXEC_NUM
             , UPD_DTM
             , UPD_EMPID
             , UPD_IP
             , CRT_DTM
             , CRT_EMPID
             , CRT_IP
             , SELF_CHK_STR
             , SELF_CHK_END
             , SELF_CHK_STS
             , SELF_CHK_AGREE
             , APPRO_EMPID
             , APPRO_YMD
             , MOBILE_ID
             , CUST_NM
             , CP_NUM 
        )
        SELECT  UC.USE_CONT_NUM
              , MTR.MTR_NUM
              , GOP.CHK_EXEC_NUM
              , SYSDATE
              , 'SYSTEM'
              , '11.11.11.11'
              , SYSDATE
              , 'SYSTEM'
              , '11.11.11.11'
              , TO_CHAR(SYSDATE,'YYYYMMDD')  AS SELF_CHK_STR
              , CASE WHEN TO_CHAR(SYSDATE,'MM') IN ('05','11') THEN TO_CHAR(LAST_DAY(SYSDATE),'YYYYMMDD')
                     ELSE TO_CHAR(ADD_MONTHS(SYSDATE,1)-1,'YYYYMMDD')
                END                          AS SELF_CHK_END
              , '30'                         AS SELF_CHK_STS    -- 진행 상태 
              , 'Y'                          AS SELF_CHK_AGREE  -- 사용자 동의 
              , ''                           AS APPRO_EMPID 
              , ''                           AS APPRO_YMD 
              , null                  AS MOBILE_ID
              , CI1.CUST_NM                  AS CUST_NM
              , CI1.CP_DDD || '-' || CI1.CP_EXN  || '-' || CI1.CP_NUM  AS CP_NUM 
        FROM    C31.C3AT_MTR            MTR 
              , C11.C1BT_USE_CONT       UC
              , C11.C1AT_CUST_INFO      CI1
              , C31.C3Ct_GENER_OBJ_PDA  GOP
        WHERE   MTR.INST_PLACE_NUM   = UC.INST_PLACE_NUM
        AND     UC.CUST_NUM          = CI1.CUST_NUM
        AND     MTR.INST_PLACE_NUM   = GOP.INST_PLACE_NUM
        AND     UC.USE_CONT_NUM = GOP.USE_CONT_NUM
        AND     GOP.CHK_YEAR  = '2026'
        AND     GOP.CHK_ORDER = '10'
        AND     GOP.CHK_TYPE = '11'
        AND EXISTS(
            SELECT  1
            FROM    C31.C3Ct_GENER_SELF_CHK_RSLT GSR
            WHERE   GSR.CHK_EXEC_NUM = GOP.CHK_EXEC_NUM
        )
        AND NOT EXISTS(
            SELECT  1
            FROM    C31.C3Ct_GENER_SELF_CHK_OBJ GSR
            WHERE   GSR.CHK_EXEC_NUM = GOP.CHK_EXEC_NUM
        )    -- 여기까지 하면 대상이 없는데 결과만 전송된 것들.
        
        -- 삭제된거는 다시 살리지 말라고 하면 아래 주석 풀고 실행. 삭제된것도 다 살려라 그러면 그냥 주석처리 상태로 실행.
--        AND NOT EXISTS(
--            SELECT  1
--            FROM    C31.C3CT_GENER_SELF_CHK_DEL_HIST GSD
--            WHERE   GSD.CHK_EXEC_NUM = GOP.CHK_EXEC_NUM
--        )
        ;
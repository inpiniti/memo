/******************************
검침 세대검색 부분
*******************************/
1. 전체목록, 미검침, 부재검침 목록에서만 세대검색 가능
 - 각 객체에 매칭되는 meterReading.mtrNum의 검침등록 화면으로 이동 (단일건)
 - 다중건의 경우 매칭되는 항목을 필터링하여 목록화면 형태로 화면표기

* 조회항목 (주소는 퀵메뉴 검색부분과 동일 / 도로명, 지번-공동, 지번-단독)
고객명 meterReading.custNm
상호명 meterReading.firmNm
휴대전화 meterReading.cpDdd||meterReading.cpExn||meterReading.cpNum
사용계약번호 meterReading.useContNum
기물번호 meterReading.mtrIdNum (영상인식 또는 수기입력) 
계량기번호 meterReading.mtrNum


/******************************
안전점검 세대검색 부분
*******************************/
1. 일반점검, 예약점검, 우선점검, 미점검, 부재 목록화면 (세대검색 동일)
 - 각 객체에 매칭되는 safeChkData.chkExecNum의 점검개요 화면으로 이동 (단일건)
 - 다중건의 경우 매칭되는 항목을 필터링하여 목록화면 형태로 화면표기

* 조회항목 (주소는 퀵메뉴 검색부분과 동일 / 도로명, 지번-공동, 지번-단독)
고객명 safeChkData.custNm
상호명 safeChkData.firmNm
휴대전화 safeChkData.cpDdd||safeChkData.cpExn||safeChkData.cpNum
사용계약번호 safeChkData.useContNum
기물번호 safeChkMtrInfo.mtrIdNum (영상인식 또는 수기입력) 
계량기번호 safeChkMtrInfo.mtrNum

2. 개선권고 목록화면
 - 각 객체에 매칭되는 safeChkNoGoodInfo.chkExecNum의 점검개요 화면으로 이동 (단일건)
 - 다중건의 경우 매칭되는 항목을 필터링하여 목록화면 형태로 화면표기

* 조회항목 (주소는 퀵메뉴 검색부분과 동일 / 도로명, 지번-공동, 지번-단독)
고객명 safeChkNoGoodInfo.custNm
상호명 safeChkNoGoodInfo.firmNm
휴대전화 safeChkNoGoodInfo.cpDdd||safeChkNoGoodInfo.cpExn||safeChkNoGoodInfo.cpNum
사용계약번호 safeChkNoGoodInfo.useContNum
설치장소번호 safeChkNoGoodInfo.instPlaceNum

3. 조정기점검
 - 각 객체에 매칭되는 safeChkRegtrInfo.chkExecNum의 점검개요 화면으로 이동 (단일건)
 - 다중건의 경우 매칭되는 항목을 필터링하여 목록화면 형태로 화면표기

* 조회항목 (주소는 퀵메뉴 검색부분과 동일 / 도로명, 지번-공동, 지번-단독)
건물번호 safeChkRegtrInfo.bldNum
조정기번호 safeChkRegtrInfo.regtrNum
기물번호 safeChkRegtrMtrInfo.mtrIdNum (영상인식 또는 수기입력) 
계량기번호 safeChkRegtrMtrInfo.mtrNum


4. 보일러사용전점검
 - 각 객체에 매칭되는 safeChkBefoData.chkExecNum의 점검개요 화면으로 이동 (단일건)
 - 다중건의 경우 매칭되는 항목을 필터링하여 목록화면 형태로 화면표기

* 조회항목 (주소는 퀵메뉴 검색부분과 동일 / 도로명, 지번-공동, 지번-단독)
고객명 safeChkBefoData.custNm
상호명 safeChkBefoData.firmNm
휴대전화 safeChkBefoData.cpDdd||safeChkBefoData.cpExn||safeChkBefoData.cpNum
사용계약번호 safeChkBefoData.useContNum
기물번호 safeChkBefoData.mtrIdNum (영상인식 또는 수기입력) 
계량기번호 safeChkBefoData.mtrNum


5. 보일러사용전점검 개선권고 목록
 - 각 객체에 매칭되는 safeChkBefoNoGoodInfo.chkExecNum의 개선권고 개요 화면으로 이동 (단일건)
 - 다중건의 경우 매칭되는 항목을 필터링하여 목록화면 형태로 화면표기

* 조회항목 (주소는 퀵메뉴 검색부분과 동일 / 도로명, 지번-공동, 지번-단독)
고객명 safeChkBefoNoGoodInfo.custNm
상호명 safeChkBefoNoGoodInfo.firmNm
휴대전화 safeChkBefoNoGoodInfo.cpDdd||safeChkBefoNoGoodInfo.cpExn||safeChkBefoNoGoodInfo.cpNum
기물번호 safeChkBefoNoGoodDetalInfo.mtrIdNum (영상인식 또는 수기입력) 
계량기번호 safeChkBefoNoGoodDetalInfo.mtrNum


6. 특정점검, 우선 목록
 - 각 객체에 매칭되는 specailChkData.chkExecNum의 점검개요 화면으로 이동 (단일건)
 - 다중건의 경우 매칭되는 항목을 필터링하여 목록화면 형태로 화면표기

* 조회항목 (주소는 퀵메뉴 검색부분과 동일 / 도로명, 지번-공동, 지번-단독)
특정번호 specailChkData.specialNum
사용계약번호 specailChkMtrInfo.useContNum
기물번호 specailChkMtrInfo.mtrIdNum (영상인식 또는 수기입력) 
계량기번호 specailChkMtrInfo.mtrNum
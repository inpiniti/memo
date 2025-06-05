# 계량기 교체(Meter Replacement)

## 개요

계량기 교체 작업에 대한 상세 정보를 담는 데이터 구조입니다.  
각 필드는 계량기, 고객, 주소, 교체 이력 등 다양한 정보를 포함합니다.

## 주요 컬럼

| 컬럼               | 한글명                     | 샘플          |
| ------------------ | -------------------------- | ------------- |
| mtrNum             | 계량기 번호                | 301565812     |
| objCrtYmd          | 객체 생성 일자             | 20250605      |
| replOccuFlag       | 교체 발생 구분             | 10            |
| centerCd           | 센터 코드                  | 11            |
| pdaReplJobItem     | PDA 교체 작업 항목         | 10            |
| instPlaceNum       | 설치 장소 번호             | 201565812     |
| city               | 시/도명                    | 서울          |
| area               | 구/군명                    | 강서구        |
| town               | 동/읍/면명                 | 공항동        |
| village            | 리/마을명                  | null          |
| addr1M             | 번지(본번)                 | 1355          |
| addr1S             | 번지(부번)                 | 10            |
| lotNumSecondAddr   | 지번 상세 주소             | null          |
| coLiveNm           | 공동생활자명               | null          |
| houseCnt           | 세대수                     | 301           |
| bldNm              | 건물명                     | null          |
| detaFloor          | 상세 층 정보               | null          |
| lawTown            | 법정동명                   | 공항동        |
| newRoadNm          | 도로명 주소                | 방화대로6라길 |
| newAddrM           | 도로명 본번                | 1             |
| newAddrS           | 도로명 부번                | 0             |
| custNum            | 고객 번호                  | 1005190096    |
| custTypeCd         | 고객 유형 코드             | 10            |
| custNm             | 고객명                     | 배유정        |
| firmNm             | 업체명                     | (공백)        |
| bizRegiNum         | 사업자 등록번호            | (공백)        |
| socNum             | 주민등록번호               | (공백)        |
| repreNm            | 대표자명                   | null          |
| cpDdd              | 휴대폰 지역번호            | 010           |
| cpExn              | 휴대폰 국번호              | 5496          |
| cpNum              | 휴대폰 번호                | 2767          |
| ownhouseTelDdd     | 자택 전화 지역번호         | null          |
| ownhouseTelExn     | 자택 전화 국번호           | null          |
| ownhouseTelNum     | 자택 전화 번호             | null          |
| firmTelDdd         | 회사 전화 지역번호         | null          |
| firmTelExn         | 회사 전화 국번호           | null          |
| firmTelNum         | 회사 전화 번호             | null          |
| useContNum         | 사용 계약 번호             | 6006826581    |
| prodNm             | 상품명 코드                | 11            |
| contYmd            | 계약 일자                  | 20211122      |
| cnlYmd             | 해지 일자                  | 20190316      |
| mtrIdNum           | 계량기 식별 번호           | 095212605856  |
| mtrModelCd         | 계량기 모델 코드           | 10041         |
| mtrGrd             | 계량기 등급                | 2.5           |
| mtrForm            | 계량기 형식                | 10            |
| mtrType            | 계량기 타입                | 20            |
| mtrRemoteFlag      | 원격 계량기 여부           | 10            |
| mtrKind            | 계량기 종류                | 10            |
| mtrFormApproYn     | 형식 승인 여부             | Y             |
| mtrDigitCnt        | 계량기 자릿수              | 5             |
| mtrNewFixFlag      | 신규 고정 여부             | 20            |
| fixFirmNmCd        | 고정 업체 코드             | R4            |
| mtrValidYm         | 계량기 유효 년월           | 202002        |
| mtrLocFlag         | 계량기 위치 구분           | 10            |
| mtrDetaLoc         | 계량기 상세 위치           | (공백)        |
| compensNum         | 보상 계량기 번호           | (공백)        |
| compensIdNum       | 보상 계량기 식별 번호      | (공백)        |
| compensModelCd     | 보상 계량기 모델 코드      | (공백)        |
| compensFlag        | 보상 구분                  | (공백)        |
| compensValidYm     | 보상 계량기 유효 년월      | (공백)        |
| compensFormApproYn | 보상 계량기 형식 승인 여부 | (공백)        |
| befoIndiVm         | 교체 전 지침(Vm)           | 0             |
| befoIndiVa         | 교체 전 지침(Va)           | 0             |
| befoIndiVc         | 교체 전 지침(Vc)           | 227           |
| replSts            | 교체 상태                  | 10            |
| zipNo1             | 우편번호 앞자리            | 157           |
| zipNo2             | 우편번호 뒷자리            | 816           |
| befoTemper         | 교체 전 온도               | 0             |
| befoPress          | 교체 전 압력               | 0             |
| befoRevisPara      | 교체 전 보정계수           | 0             |
| temper             | 온도                       | null          |
| press              | 압력                       | null          |
| revisPara          | 보정계수                   | null          |
| revisFlag          | 보정계수 적용 여부         | 10            |
| compensMakerNm     | 보상 계량기 제조사명       | null          |
| mtrSupplySts       | 계량기 공급 상태           | 10            |
| sendYn             | 전송 여부                  | N             |
| backReplSts        | 역교체 상태                | 10            |
| contStsCd          | 계약 상태 코드             | 10            |
| nobillYn           | 청구 제외 여부             | N             |
| prodContSeq        | 상품 계약 순번             | null          |
| buldCenterCd       | 건물 센터 코드             | null          |
| chkBuldCenterCd    | 확인 건물 센터 코드        | 11            |
| otherPrice         | 기타 요금                  | null          |
| batteryYn          | 배터리 여부                | null          |
| mtrDisplayYn       | 계량기 디스플레이 여부     | null          |
| remoteSystem       | 원격 시스템 정보           | null          |
| memo               | 메모                       | null          |
| amiObjYn           | AMI 대상 여부              | N             |

> null 또는 공백은 값이 없음을 의미합니다.

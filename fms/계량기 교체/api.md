# API Documentation

## /api/receive/mtrChage/meterReplaceMentObjInfo

**가정용 계량기 교체목록 (노후, 민원, 무전표)**

### Payload

```json
{
  "centerCd": "11", // 센터번호
  "area": "강서구", // 시군구                      (목록? init코드에서?)
  "employeeId": "200710006", // 사번
  "replOccuFlag": "10", // 교체발생구분
  "town": "", // 읍면동                            (목록? init코드에서?)
  "newRoadNm": "", // 새로운 도로명 : 입력이 필요함. (목록? init코드에서?)
  "compxFlagNm": "", // 단지                        (목록? init코드에서?)
  "buldCenterCd": "", // 건물센터코드               (?????)
  "fromYmd": "", // 유효기간 From
  "toYmd": "" // 유효기간 To

  // 계량기 종류 ?
}
```

---

## /api/receive/mtrChage/meterReplaceMentBigObjInfo

**대용량 계량기 교체목록 (노후, 민원)**

### Payload

```json
{
  "area": "강서구", // 시군구
  "replOccuFlag": "10" // 교체발생구분
}
```

---

## /api/send/mtrChage/mtrNotChangeReg

**교체불가 저장**

---

## /api/send/mtrChage/mtrChangeRsltReg

**계량기 데이터 송신**

### Payload

```json
{
  "mtrNum": "string", // 계량기번호
  "replTreatYmd": "string", // 교체처리일자
  "objCrtYmd": "string", // 대상생성일자
  "centerCd": "string", // 센터코드
  "pdaReplJobItem": "string", // PDA 교체작업구분
  "pdaNum": "string", // PDA 번호
  "instPlaceNum": "string", // 설치장소번호
  "mtrFeeFreeFlag": "string", // 계량기무상여부
  "mtrReplWhy": "string", // 계량기교체사유
  "mtrBar": "string", // 계량기바코드
  "afterMtrIdNum": "string", // 교체 후 계량기기물번호
  "afterMtrModelCd": "string", // 교체 후 계량기모델코드
  "afterMtrGrd": "string", // 교체 후 계량기등급
  "afterMtrForm": "string", // 교체 후 계량기형식
  "afterMtrType": "string", // 교체 후 계량기타입
  "afterMtrRemoteFlag": "string", // 교체 후 계량기원격구분
  "afterMtrKind": "string", // 교체 후 계량기종류
  "afterMtrDigitCnt": "string", // 교체 후 계량기자릿수
  "afterMtrNewFixFlag": "string", // 교체 후 계량기신수리구분
  "afterFixFirmNmCd": "string", // 교체 후 수리업체코드
  "afterMtrValidYm": "string", // 교체 후 계량기유효년월
  "afterMtrApproYn": "string", // 교체 후 계량기형식승인여부
  "compensFeeFreeFlag": "string", // 보정기무상여부
  "compensReplWhy": "string", // 보정기교체사유
  "compensBar": "string", // 보정기바코드
  "afterCompensNum": "string", // 교체 후 보정기번호
  "afterCompensIdNum": "string", // 교체 후 보정기기물번호
  "afterCompensModelCd": "string", // 교체 후 보정기모델코드
  "afterCompensValidYm": "string", // 교체 후 보정기유효년월
  "afterCompensPress": "string", // 교체 후 보정기압력
  "afterFormApproYn": "string", // 교체 후 보정기형식승인여부
  "removeIndiVm": "string", // 철거 전 지침_VM
  "removeIndiVa": "string", // 철거 전 지침_VA
  "removeIndiVc": "string", // 철거 전 지침_VC
  "instIndiVm": "string", // 설치 후 지침_VM
  "instIndiVa": "string", // 설치 후 지침_VA
  "instIndiVc": "string", // 설치 후 지침_VC
  "temper": "string", // 온도
  "press": "string", // 압력
  "revisPara": "string", // 계수
  "treatFlag": "string", // 처리구분
  "replNotPermitWhy": "string", // 교체불가사유
  "jobDtm": "string", // 작업일시
  "joberEmpid": "string", // 작업자사번
  "mtrPhoto": "string", // 계량기사진
  "compensPhoto": "string", // 보정기사진
  "custSign": "string", // 고객서명
  "visitYmd": "string", // 방문일자
  "memo": "string", // 메모
  "commNum": "string", // 통신번호
  "commFirm": "string", // 통신사
  "inflowFlag": "string", // 유입구분
  "nobillYn": "string", // 무전표여부
  "useContNum": "string", // 사용계약번호
  "prodContSeq": "string", // 상품계약순번
  "buldCenterCd": "string", // 건물센터코드
  "replTreatInsti": "string", // 교체처리기관
  "noBillReplWhy": "string", // 무전표교체사유
  "batteryYn": "string", // 배터리여부
  "mtrdisplayYn": "string", // 계량기표시여부
  "otherPrice": "string", // 기타비용
  "remoteSystem": "string", // 원격시스템
  "oldMtrIdNum": "string", // 기존 계량기기물번호
  "connLineAmtYn": "string", // 연결선비용여부
  "concentInstAmtYn": "string", // 콘센트설치비용여부
  "employeeId": "string" // 사번
}
```

---

## /api/send/mtrChage/mtrChangeRsltPhotoReg

**교체 결과 사진 전송**

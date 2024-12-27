# Native API Documentation

## AI 카메라

### Parameters

```json
{
  "type": "meter",
  "dutyFlag": "10",
  "includeBase64": true,
  "meterNo": "1234567890",
  "mtrIdNum": "088322003803",
  "employeeId": "200710006",
  "equipTelNum": "01012345678"
}
```

### Response

```json
{
  "result": {
    "base64": "data:image/png;base64,/9j/4AAQ .... ",
    "callback": "callback-0.9971376155748086",
    "current": 0,
    "includeBase64": false,
    "meterNo": "1234567890",
    "originBase64": "/data/user/0/com.scgs.fms/app_images/imagesCrop/image_1735262821254.jpg",
    "originPath": "/data/user/0/com.scgs.fms/app_images/imagesCrop/image_1735262821254.jpg",
    "replacementIndicatorValue": "01994",
    "responseMeterNo": "111321043654",
    "type": "meter"
  },
  "response": 200
}
```

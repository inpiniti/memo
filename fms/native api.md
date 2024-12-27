# Native API Documentation

## 일반 카메라

### Parameters

```json
{
  "type": "",
  "dutyFlag": "10",
  "mtrIdNum": "088322003803",
  "employeeId": "200710006",
  "equipTelNum": "01012345678",
  "includeBase64": true,
  "data": [
    {
      "title": "Sample Title1",
      "id": "1",
      "maxLength": 1,
      "length": 0,
      "paths": [],
      "base64": []
    },
    {
      "title": "Sample Title2",
      "id": "2",
      "maxLength": 2,
      "length": 0,
      "paths": [],
      "base64": []
    }
  ]
}
```

### Response

```json
{
  "result": {
    "callback": "callback_0.5054206243440862",
    "current": 0,
    "data": [
      {
        "base64": [],
        "id": "1",
        "length": 1,
        "maxLength": 1,
        "paths": [
          "/data/user/0/com.scgs.fms/app_images/imagesCrop/image_1734584064030.jpg"
        ],
        "title": "Sample Title1"
      },
      {
        "base64": [],
        "id": "2",
        "length": 2,
        "maxLength": 2,
        "paths": [
          "/data/user/0/com.scgs.fms/app_images/imagesCrop/image_1734584074254.jpg",
          "/data/user/0/com.scgs.fms/app_images/imagesCrop/image_1734584076656.jpg"
        ],
        "title": "Sample Title2"
      }
    ],
    "includeBase64": false,
    "type": ""
  },
  "response": 200
}
```

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

_Responses are not yet defined for AI 카메라._
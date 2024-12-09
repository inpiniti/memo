PowerShell에서 `NODE_TLS_REJECT_UNAUTHORIZED` 환경 변수를 설정하는 방법은 다음과 같습니다:

### PowerShell에서 일시적으로 환경 변수 설정

PowerShell 세션 동안 일시적으로 환경 변수를 설정하려면 다음 명령을 사용합니다:

```powershell
$env:NODE_TLS_REJECT_UNAUTHORIZED=0
```

이 명령은 현재 PowerShell 세션에서만 유효합니다. PowerShell 창을 닫으면 설정이 사라집니다.

### PowerShell에서 영구적으로 환경 변수 설정

PowerShell 프로필 스크립트에 환경 변수를 추가하여 영구적으로 설정할 수 있습니다. PowerShell 프로필 스크립트는 PowerShell이 시작될 때마다 실행되는 스크립트입니다.

1. **PowerShell 프로필 스크립트 열기**:
   - PowerShell을 열고 다음 명령을 실행하여 프로필 스크립트를 엽니다:

```powershell
notepad $PROFILE
```

2. **환경 변수 추가**:
   - 프로필 스크립트 파일이 열리면 다음 줄을 추가합니다:

```powershell
$env:NODE_TLS_REJECT_UNAUTHORIZED=0
```

3. **파일 저장 및 닫기**:

   - 파일을 저장하고 닫습니다.

4. **PowerShell 다시 시작**:
   - PowerShell을 다시 시작하여 변경 사항을 적용합니다.

이제 PowerShell을 열 때마다 `NODE_TLS_REJECT_UNAUTHORIZED` 환경 변수가 설정됩니다.

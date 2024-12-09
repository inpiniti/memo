이 오류는 셀프 서명된 인증서로 인해 발생하는 문제입니다. 이 문제를 해결하기 위해 몇 가지 방법을 시도할 수 있습니다:

1. **npm 설정 변경**:
   - `npm`의 `strict-ssl` 설정을 `false`로 변경하여 셀프 서명된 인증서를 무시할 수 있습니다. 이 방법은 보안상 권장되지 않으므로, 신뢰할 수 있는 네트워크에서만 사용하세요.

```sh
npm config set strict-ssl false
```

2. **환경 변수 설정**:
   - `NODE_TLS_REJECT_UNAUTHORIZED` 환경 변수를 `0`으로 설정하여 셀프 서명된 인증서를 무시할 수 있습니다. 이 방법도 보안상 권장되지 않습니다.

```sh
export NODE_TLS_REJECT_UNAUTHORIZED=0
```

3. **프록시 설정**:
   - 회사 네트워크나 방화벽 뒤에 있는 경우, 프록시 설정을 통해 접근할 수 있습니다. `npm`의 프록시 설정을 변경합니다.

```sh
npm config set proxy http://proxy.company.com:8080
npm config set https-proxy http://proxy.company.com:8080
```

위의 방법 중 하나를 시도하여 문제를 해결한 후, 다시 `npx shadcn@latest add dialog` 명령을 실행해 보세요.

### Dialog 컴포넌트 수동 추가

`shadcn`의

Dialog

컴포넌트를 수동으로 추가하는 방법도 있습니다. 다음은

Dialog

컴포넌트를 수동으로 추가하는 예제입니다:

1.

Dialog.tsx

파일을 생성합니다:

```tsx
import React, { useState } from 'react';

interface DialogProps {
  isOpen: boolean;
  onClose: () => void;
  children: React.ReactNode;
}

const Dialog: React.FC<DialogProps> = ({ isOpen, onClose, children }) => {
  if (!isOpen) return null;

  return (
    <div className="fixed inset-0 z-50 flex items-center justify-center bg-black bg-opacity-50">
      <div className="bg-white p-4 rounded shadow-lg">
        {children}
        <button onClick={onClose} className="mt-4">
          Close
        </button>
      </div>
    </div>
  );
};

export default Dialog;
```

2.

setting-dialog.tsx

파일에서

Dialog

컴포넌트를 사용합니다:

```tsx
import React, { useState } from 'react';
import { Button } from '@/components/ui/button';
import Dialog from '@/components/ui/Dialog';

export default function SettingDialog() {
  const [isOpen, setIsOpen] = useState(false);

  const handleOpen = () => setIsOpen(true);
  const handleClose = () => setIsOpen(false);

  return (
    <div>
      <Button onClick={handleOpen}>Open Dialog</Button>
      <Dialog isOpen={isOpen} onClose={handleClose}>
        <h2>Settings</h2>
        <p>Here you can configure your settings.</p>
      </Dialog>
    </div>
  );
}
```

이렇게 하면

Dialog

컴포넌트를 수동으로 추가하여 사용할 수 있습니다.

Dialog

컴포넌트는 `isOpen`과 `onClose` 속성을 받아 다이얼로그의 열림/닫힘 상태를 제어합니다. `SettingDialog` 컴포넌트에서

Dialog

컴포넌트를 사용하여 설정 다이얼로그를 구현할 수 있습니다.

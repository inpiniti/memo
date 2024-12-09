# Git 브랜치 생성 및 병합 일련의 과정

아래 단계별로 `develop_ykjung` 브랜치를 생성하고, 작업 후 `develop` 브랜치에 병합하는 과정을 안내드립니다.

## **1. 현재 `develop` 브랜치에 있는지 확인**

먼저, 현재 `develop` 브랜치에 있는지 확인하고, 아니라면 `develop` 브랜치로 전환합니다.

```bash
git checkout develop
```

- **설명:**
  - `git checkout develop`: 현재 브랜치를 `develop`으로 전환합니다.
  - **참고:** 이미 `develop` 브랜치에 있다면 이 명령어는 필요없습니다.

## **2. `develop_ykjung` 브랜치 생성 및 전환**

새로운 브랜치 `develop_ykjung`을 생성하고 해당 브랜치로 전환합니다.

```bash
git checkout -b develop_ykjung
```

- **설명:**
  - `-b`: 새로운 브랜치를 생성하고 해당 브랜치로 전환합니다.
  - `develop_ykjung`: 생성할 브랜치 이름입니다.

## **3. 브랜치에서 작업하고 변경 사항 커밋하기**

원하는 파일을 수정하거나 기능을 추가한 후, 변경 사항을 스테이지하고 커밋합니다.

```bash
git add .
git commit -m "작업 내용에 대한 설명"
```

- **설명:**
  - `git add .`: 현재 디렉토리의 모든 변경된 파일을 스테이지합니다.
  - `git commit -m "메시지"`: 스테이지된 변경 사항을 커밋하며, 메시지를 추가합니다.
  - **팁:** 명확한 커밋 메시지를 작성하여 나중에 변경 내용을 쉽게 파악할 수 있도록 합니다.

## **4. `develop_ykjung` 브랜치를 원격 저장소에 푸시하기**

로컬 브랜치 변경 사항을 원격 저장소에 푸시합니다.

```bash
git push -u origin develop_ykjung
```

- **설명:**
  - `git push`: 로컬 커밋을 원격 저장소에 푸시합니다.
  - `-u`: 업스트림(upstream) 브랜치를 설정하여 이후 `git push` 및 `git pull` 명령을 간편하게 사용할 수 있습니다.
  - `origin`: 원격 저장소 이름 (일반적으로 기본값은 `origin`).
  - `develop_ykjung`: 푸시할 브랜치 이름.

## **5. `develop` 브랜치로 돌아가기**

기존 `develop` 브랜치로 전환합니다.

```bash
git checkout develop
```

- **설명:**
  - 이전에 작업했던 `develop` 브랜치로 돌아갑니다.

## **6. `develop_ykjung` 브랜치의 변경 사항을 `develop` 브랜치에 병합하기**

`develop_ykjung` 브랜치의 변경 사항을 `develop` 브랜치에 병합합니다.

```bash
git merge develop_ykjung
```

- **설명:**

  - `git merge`: 지정한 브랜치의 변경 사항을 현재 브랜치에 병합합니다.
  - `develop_ykjung`: 병합할 브랜치 이름.

- **병합 충돌 시:**

  - 병합 중에 충돌이 발생할 수 있습니다. 이 경우, 충돌이 발생한 파일을 열어 수동으로 수정한 후, 변경 사항을 스테이지하고 커밋해야 합니다.

  ```bash
  # 충돌 해결 후
  git add <충돌이 해결된 파일>
  git commit -m "충돌 해결 메시지"
  ```

## **7. 병합된 `develop` 브랜치를 원격 저장소에 푸시하기**

병합된 `develop` 브랜치의 변경 사항을 원격 저장소에 푸시합니다.

```bash
git push origin develop
```

- **설명:**
  - `git push`: 로컬 커밋을 원격 저장소에 푸시합니다.
  - `origin`: 원격 저장소 이름.
  - `develop`: 푸시할 브랜치 이름.

## **전체 과정 요약**

1. `develop` 브랜치로 전환:

   ```bash
   git checkout develop
   ```

2. `develop_ykjung` 브랜치 생성 및 전환:

   ```bash
   git checkout -b develop_ykjung
   ```

3. 작업 후 변경 사항 커밋:

   ```bash
   git add .
   git commit -m "작업 내용에 대한 설명"
   ```

4. `develop_ykjung` 브랜치를 원격에 푸시:

   ```bash
   git push -u origin develop_ykjung
   ```

5. `develop` 브랜치로 돌아가기:

   ```bash
   git checkout develop
   ```

6. `develop_ykjung` 브랜치의 변경 사항을 `develop`에 병합:

   ```bash
   git merge develop_ykjung
   ```

7. 병합된 `develop` 브랜치를 원격에 푸시:
   ```bash
   git push origin develop
   ```

## **추가 팁**

- **브랜치 목록 확인하기:**

  ```bash
  git branch           # 로컬 브랜치 목록
  git branch -r        # 원격 브랜치 목록
  git branch -a        # 모든 브랜치 목록
  ```

- **원격 브랜치 삭제하기 (필요 시):**

  ```bash
  git push origin --delete develop_ykjung
  ```

- **브랜치 삭제하기 (로컬):**

  ```bash
  git branch -d develop_ykjung
  ```

  - **주의:** 브랜치를 삭제하기 전에 모든 변경 사항이 병합되었는지 확인하세요.

- **브랜치 네이밍 규칙 준수:**
  - 브랜치 이름은 간결하고 명확하게 작성하세요. 예: `feature/login`, `bugfix/issue-123`.

Git 브랜치 및 병합에 대한 추가 질문이 있으시면 언제든지 문의해 주세요!

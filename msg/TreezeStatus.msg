# 트리즈(브레이크/악셀 제어기) 상태 요약
# critical_error: 치명적 에러(브레이크 모듈/HW/CAN수신) → 로컬 E-Stop 트리거
# error_code: 프로토콜 v2.6 ERROR_CODE (0: 없음, 1~20: Brake/Accel 모듈, 21: CAN 수신에러)
bool critical_error false
uint8 error_code 0

# 차량(ADT Mule Car) CAN 에서 읽은 계기·표시 신호. 255 는 미수신/Not available.
# can_parser 가 해당 프레임 수신 시 vehicle_gauge 로 발행한다.
#
# 계기: J1939 PGN 0xFF45 GPG(0x18FF4521) Byte1~4. 분해능 1, 단위 %(게이지 눈금).
# FNR: J1939 PGN 0xFE4A TCU_ETC7(0x18FE4A03) TransmissionRequestedGearFdbck(Byte4, offset -125)
#      의 부호. 양수 F, 0 N, 음수 R. VCU 가 TC1(0x0C010321)로 요청한 기어를 변속기가 되돌린 값.
#      (DBC 의 VCU_SIG1 FF43_FNR 은 이 차량에서 항상 0 — 2026-10-08 실차 확인, docs/vehicle_can_fnr.md)
# 파킹: PGN 0xFF43 VCU_SIG1(0x18FF4321) FF43_ParkingBrake(비트 21).
uint8 NOT_AVAILABLE=255

# fnr 코드. 프로토콜 v3.1 지령 FNR(0 N, 1 F, 2 R)과 같아서 drive_cmd.fnr 과 바로 비교된다.
uint8 FNR_N=0
uint8 FNR_F=1
uint8 FNR_R=2

uint8 coolant_temp   # 냉각수 온도 게이지 %
uint8 hyd_oil_temp   # 작동유 온도 게이지 %
uint8 fuel_level     # 연료 잔량 %
uint8 urea_level     # 요소수 잔량 %
uint8 fnr            # 차량(변속기)이 받아들인 FNR (0 N, 1 F, 2 R, 255 미수신)
uint8 parking_brake  # 차량 파킹 브레이크 표시 (0 해제, 1 체결, 255 미수신)

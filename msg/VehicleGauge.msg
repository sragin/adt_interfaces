# 차량(ADT Mule Car) CAN 에서 읽은 계기·표시 신호. 255 는 미수신/Not available.
# can_parser 가 해당 프레임 수신 시 vehicle_gauge 로 발행한다.
#
# 계기: J1939 PGN 0xFF45 GPG(0x18FF4521) Byte1~4. 분해능 1, 단위 %(게이지 눈금).
# FNR/파킹: PGN 0xFF43 VCU_SIG1(0x18FF4321) FF43_FNR(비트 18, 2bit), FF43_ParkingBrake(비트 21).
uint8 NOT_AVAILABLE=255

# FF43_FNR 값 (차량 계기판 표시 기준. 프로토콜 v3.1 의 FNR(0:N,1:F,2:R)과 다르다)
uint8 FNR_F=0
uint8 FNR_N=1
uint8 FNR_R=2
uint8 FNR_UNDEFINED=3

uint8 coolant_temp   # 냉각수 온도 게이지 %
uint8 hyd_oil_temp   # 작동유 온도 게이지 %
uint8 fuel_level     # 연료 잔량 %
uint8 urea_level     # 요소수 잔량 %
uint8 fnr            # 차량 셀렉터 FNR 표시 (0 F, 1 N, 2 R, 3 미정의, 255 미수신)
uint8 parking_brake  # 차량 파킹 브레이크 표시 (0 해제, 1 체결, 255 미수신)

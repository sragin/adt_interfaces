# 차량(ADT Mule Car) 계기 데이터. J1939 PGN 0xFF45 GPG 프레임의 Byte1~4(0-base 0~3).
# DBC(ADT_MULE_260831) 기준 분해능 1, 단위 %(게이지 눈금). 255 는 Not available.
# can_parser 가 프레임 수신 시 vehicle_gauge 로 발행한다.
uint8 NOT_AVAILABLE=255

uint8 coolant_temp   # 냉각수 온도 게이지 %
uint8 hyd_oil_temp   # 작동유 온도 게이지 %
uint8 fuel_level     # 연료 잔량 %
uint8 urea_level     # 요소수 잔량 %

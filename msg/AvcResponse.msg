# AVC(상위 자율주행 제어기)로 실제 송신한 응답 프레임 값.
# 프로토콜 v3.1  0x220 Response_Status / 0x221 Response_Car.
# can_sender 가 CAN 송신 직후 발행하고 status_publisher 가 모아서 vehicle_status 로 내보낸다.

# MODE_FB
uint8 MODE_FB_MANUAL=0
uint8 MODE_FB_REMOTE=1
uint8 MODE_FB_AUTO=2
uint8 MODE_FB_ESTOP=255
# STATUS
uint8 STATUS_ERROR=0
uint8 STATUS_READY=1
uint8 STATUS_AUTO=2
uint8 STATUS_ESTOP=3
# 미배선/미수신 신호의 무효값(8bit)
uint8 INVALID_U8=255

# --- 0x220 Response_Status ---
uint8 mode_fb
uint8 status
uint8 error_code            # 0: 없음, 1~20: Brake/Accel 모듈, 21: CAN 수신에러, 22: 제어권한 획득 실패
uint8 status_alive_cnt

# --- 0x221 Response_Car ---
uint8 vehicle_speed         # km/h. 255: 무효(차량 CAN 미수신)
float32 steer_angle         # degree. steer_angle_valid 가 false 면 무효(0x8000)를 보냈다
bool steer_angle_valid
uint8 acc_fb                # %
uint8 brake_fb              # %
uint8 dump_angle            # degree. 255: 무효(미배선)
uint8 car_alive_cnt

# CAN1 송신 성공 여부. false 면 버스 오류로 AVC 가 이 값을 받지 못했다.
bool tx_ok

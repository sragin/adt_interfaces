# ADT 차량 상태 요약. status_publisher 가 10Hz 로 발행한다.
# 웹 상태 모니터(rosbridge)와 제노 텔레메트리(zenoh_adt)가 구독하는 단일 진입점이다.
# 값의 의미는 ADT_CAN_프로토콜_v3.1 을 따른다.

std_msgs/Header header

# navigator 유한상태머신 상태: idle / e_stop / manual / remote / auto
string state

# AVC 로 실제 송신한 응답(0x220 / 0x221)
AvcResponse avc_response

# AVC 로부터 수신한 지령(0x200 Auto_Command / 0x201 Auto_Drive / 0x202 Auto_Work)
AvcControl avc_cmd

# 하위 제어기로 내려가는 현재 지령
DriveControl drive_cmd
DumpControl dump_cmd

# 하위 제어기 피드백
DanfossFB danfoss
TreezeStatus treeze

# navigator 의 E-Stop 판정 근거(지금 성립 중인 조건 / 마지막 진입 원인)
EstopReason estop

# 차량 CAN 계기 데이터(냉각수/작동유 온도, 연료/요소수 잔량). 255 는 무효
VehicleGauge gauge

# 리모콘 스위치 / 무선 비상정지
bool remote_power_on
bool remote_estop_sw
bool remote_mode_run_sw
bool remote_mode_manual_sw
bool remote_parking_on_sw
bool remote_parking_off_sw
bool estop_wireless

# 각 소스의 마지막 수신 후 경과 시간(초). 음수(-1)는 수신 이력 없음.
float32 age_state
float32 age_avc_response
float32 age_avc_cmd
float32 age_drive_cmd
float32 age_dump_cmd
float32 age_danfoss
float32 age_treeze
float32 age_remote
float32 age_estop_wireless
float32 age_estop
float32 age_gauge

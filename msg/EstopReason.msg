# navigator 가 E-Stop 판정에 쓴 조건. 상태와 함께 10Hz 발행한다.
# active: 지금 성립 중인 조건 코드(없으면 빈 배열). cause: 마지막으로 e_stop 에 들어갈 때
# 성립했던 조건(복구 뒤에도 유지되어 "왜 섰는지"를 보여준다).

string WIRELESS="wireless"                    # 무선 비상정지 입력
string REMOTE_SW="remote_sw"                  # 리모콘 E-Stop 스위치
string AVC_CMD="avc_cmd"                      # AVC ESTOP_CMD(auto 모드) 또는 지령 무효 지속
string TREEZE_CRITICAL="treeze_critical"      # 트리즈 치명 에러(treeze.error_code 참조)
string TREEZE_COMM_LOST="treeze_comm_lost"    # 트리즈 상태 미수신(Deadline)
string DANFOSS_COMM_LOST="danfoss_comm_lost"  # 댄포스 피드백 미수신(Deadline) → 조향 불가
string REMOTE_POWER_OFF="remote_power_off"    # remote/auto 모드에서 리모콘(송신기) 전원 OFF/슬립 (PowerON=0), 1초 유지
string REMOTE_LINK_LOST="remote_link_lost"    # remote/auto 모드에서 송신기↔수신기 링크 끊김 (S26=0), 1초 유지
string REMOTE_COMM_LOST="remote_comm_lost"    # remote/auto 모드에서 수신기 프레임 미수신(Deadline 0.5s)

string state                                  # 현재 상태머신 상태
string[] active
string[] cause
builtin_interfaces/Time cause_stamp           # cause 가 기록된 시각(0 이면 기록 없음)


ros2 topic pub /cmd_vel geometry_msgs/msg/Twist "{linear: {x: 0.0, y: 0.0, z: 0.0}, angular: {x: 0.0, y: 0.0, z: 0.0}}"

ros2 topic pub /cmd_vel geometry_msgs/msg/Twist "{linear: {x: 0.0, y: 0.0, z: 0.0}, angular: {x: 0.0, y: 0.0, z: 1.0}}"

ros2 topic pub /cmd_vel geometry_msgs/msg/Twist "{linear: {x: 0.5, y: 0.0, z: 0.0}, angular: {x: 0.0, y: 0.0, z: 1.0}}"

ros2 topic pub /roboclaw/claw0/motor_duty_single_cmd/chan1 roboclaw/msg/MotorDutySingle "{index: 0, channel: 0, mot_duty: 10}"

ros2 topic pub /roboclaw/claw0/motor_vel_cmd roboclaw/msg/MotorVelocity "{index: 0, mot1_vel_sps: 10000, mot2_vel_sps: 10000}"

ros2 topic pub /roboclaw/claw0/motor_vel_cmd roboclaw/msg/MotorVelocity "{index: 0, mot1_vel_sps: 1000, mot2_vel_sps: 1000}"


ros2 run roboclaw diffdrive_node --ros-args -p base_width:=0.350 -p steps_per_meter:=74659.37 -r /motor_cmd_vel:=/roboclaw/claw0/motor_vel_cmd

        this->declare_parameter<float>("base_width",       1.0f);
        this->declare_parameter<float>("steps_per_meter",  1000.0f);
        this->declare_parameter<bool>("open_loop",         false);
        this->declare_parameter<bool>("swap_motors",       true);
        this->declare_parameter<bool>("invert_motor_1",    false);
        this->declare_parameter<bool>("invert_motor_2",    false);
        this->declare_parameter<float>("var_pos_x",        0.01);
        this->declare_parameter<float>("var_pos_y",        0.01);
        this->declare_parameter<float>("var_pos_theta",    0.01);
        this->declare_parameter<int64_t>("target_index",   0);

        base_width:=0.3556
        steps_per_meter:=74662.6939905
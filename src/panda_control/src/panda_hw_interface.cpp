

#include <panda_control/panda_hw_interface.h>



namespace panda_ns
{
pandaHWInterface::pandaHWInterface(ros::NodeHandle &nh, urdf::Model *urdf_model)
  : ros_control_boilerplate::GenericHWInterface(nh, urdf_model)
{
  telemetry_sub=nh.subscribe("/teensy/pandaTelemetry",1,&pandaHWInterface::telemetryCallback, this); //topic adını yazdık sanırım bu değistirilebilir.
  cmd_pub=nh.advertise<panda_control::armCmd>("/teensy/armCmd",1);
  ROS_INFO("pandaHWinterface constructed");
}

void pandaHWInterface::telemetryCallback(const panda_control::pandaTelemetry::ConstPtr &msg){ 
    /*float32[6] angle # degrees
    float32[6] vel # deg/s
    float32[6] current # amps 
    time startSyncTime 
    uint32 isrTicks # this would overflow if the robot is left on for 497 days straight at 100 hz 
    uint8 bufferHealth
    
      // States
  std::vector<double> joint_position_;
  std::vector<double> joint_velocity_;
  std::vector<double> joint_effort_;
  num_joints_ //
  
    */
  for(int i=0; i<num_joints_ ; i++){
    joint_position_[i]=msg->angle[i]*DEG_TO_RAD; 
    joint_velocity_[i]=msg->vel[i]*DEG_TO_RAD; 


  }





} 

void pandaHWInterface::init()
{
  // Call parent class version of this function
  GenericHWInterface::init();



  ROS_INFO("pandaHWInterface Ready.");
}

void pandaHWInterface::read(ros::Duration& elapsed_time)
{
  //reading from ethernt port 
  // No need to read since our write() command populates our state for us
  //make sure grap data from callBack function
  ros::spinOnce(); //make sure all uo to date
}

void pandaHWInterface::write(ros::Duration& elapsed_time)
{
  // Safety
  //BURAYA TEKRAR DON
  /*
  float32[6] current #amps      
float32[6] accel #deg/s^2
float32[6] vel #deg/s
float32[6] angle #deg
uint32 msg_ctr

  // Commands
  std::vector<double> joint_position_command_;
  std::vector<double> joint_velocity_command_;
  std::vector<double> joint_effort_command_;
*/ 
 
  static panda_control::armCmd arm_cmd; //only created once 
  for(int i=0;i<num_joints_;i++){ 
    arm_cmd.angle[i]=joint_position_command_[i]*RAD_TO_DEG;
    arm_cmd.vel[i]=joint_velocity_command_[i]*RAD_TO_DEG;
  }
  cmd_pub.publish(arm_cmd);


}

void pandaHWInterface::enforceLimits(ros::Duration& period)
{
  // Enforces position and velocity
 // pos_jnt_sat_interface_.enforceLimits(period);
}



}  // namespace panda_ns

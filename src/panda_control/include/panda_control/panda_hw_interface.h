
#ifndef PANDA_HW_INTERFACE_H
#define PANDA_HW_INTERFACE_H

#include <ros_control_boilerplate/generic_hw_interface.h>
#include <panda_control/armCmd.h>
#include <panda_control/pandaTelemetry.h>

#define DEG_TO_RAD 0.01745329251
#define RAD_TO_DEG 57.2957795131

namespace panda_ns
{
/** \brief Hardware interface for a robot */
class pandaHWInterface : public ros_control_boilerplate::GenericHWInterface
{
public:
  /**
   * \brief Constructor
   * \param nh - Node handle for topics.
   */
  pandaHWInterface(ros::NodeHandle& nh, urdf::Model* urdf_model = NULL);

  /** \brief Initialize the robot hardware interface */
  virtual void init();

  /** \brief Read the state from the robot hardware. */
  virtual void read(ros::Duration& elapsed_time);

  /** \brief Write the command to the robot hardware. */
  virtual void write(ros::Duration& elapsed_time);

  /** \breif Enforce limits for all values before writing */
  virtual void enforceLimits(ros::Duration& period);

protected:
//write subscirber and publisher
ros::Subscriber telemetry_sub;
void telemetryCallback(const panda_control::pandaTelemetry::ConstPtr &msg);

ros::Publisher cmd_pub;


};  // class

}  // namespace ros_control_boilerplate

#endif

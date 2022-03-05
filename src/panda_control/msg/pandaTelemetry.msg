float32[7] angle # degrees
float32[7] vel # deg/s
float32[7] current # amps 
time startSyncTime 
uint32 isrTicks # this would overflow if the robot is left on for 497 days straight at 100 hz 
uint8 bufferHealth
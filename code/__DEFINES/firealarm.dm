//A set of defines to be sent by fire alarms. The signals are sent to the alarm's area, but are read and used by the firelocks of the area, and are used for mass changes in fire detection.
///Sent when a fire alarm is emagged
#define FIRE_DETECT_EMAG "fire_detect_emag"
///Sent when the fire detection of an area is disabled
#define FIRE_DETECT_STOP "fire_detect_stop"
///Sent when the fire detection of an area is enabled
#define FIRE_DETECT_START "fire_detect_start"
///Designates a fire lock should be closed due to HEAT
#define FIRELOCK_ALARM_TYPE_HOT "firelock_alarm_type_hot"
///Designates a fire lock should be closed due to COLD
#define FIRELOCK_ALARM_TYPE_COLD "firelock_alarm_type_cold"
///Designates a fire lock should be closed due unknown reasons (IE fire alarm was pulled)
#define FIRELOCK_ALARM_TYPE_GENERIC "firelock_alarm_type_generic"

///Fire alert cleared by any means
#define FIRE_CLEAR (0<<0)
///Fire alert raised by pulling the fire alarm/air alarm alert button
#define FIRE_RAISED_GENERIC (1<<0)
///Fire alert raised by the air alarm (heat)
#define FIRE_RAISED_HOT (1<<1)
///Fire alert raised by the air alarm (cold)
#define FIRE_RAISED_COLD (1<<2)
///Fire alert raised by the air alarm (pressure)
#define FIRE_RAISED_PRESSURE (1<<3)

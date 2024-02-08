MCU_VARIANT = MCXA153
MCU_CORE = MCXA153
PORT = 0

CFLAGS += \
	-DCPU_MCXA153VLH \
	-DCPU_MCXA153VLH_cm33_nodsp \
	-DPRINTF_FLOAT_ENABLE=0 \
	-DSCANF_FLOAT_ENABLE=0 \
	-DPRINTF_ADVANCED_ENABLE=0 \
	-DSCANF_ADVANCED_ENABLE=0 \
	-mcpu=cortex-m33+nodsp+nofp+nosimd

#FORCING NOT TO USE DPS AND FPU UNITS (THIS CHIP DOESN'T HAVE)
CFLAGS += -D__SOFTFP__  
# Undefine __ARM_FEATURE_DSP if it's already defined
CFLAGS += -U__ARM_FEATURE_DSP
# Define __ARM_FEATURE_DSP with the new value
CFLAGS += -D__ARM_FEATURE_DSP=0
 

JLINK_DEVICE = MCXA153
PYOCD_TARGET = MCXA153

# flash using pyocd
flash: flash-jlink

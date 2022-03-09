#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=mkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/Access_Point.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/Access_Point.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS
SUB_IMAGE_ADDRESS_COMMAND=--image-address $(SUB_IMAGE_ADDRESS)
else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=../HardwareProfile.c ../AccessPoint.c ../../../Microchip/Common/Console.c ../../../Microchip/Common/MSPI.c ../../../Microchip/Common/TimeDelay.c ../../../Microchip/WirelessProtocols/MiWi/MiWi.c ../../../Microchip/WirelessProtocols/P2P/P2P.c ../../../Microchip/WirelessProtocols/LCDBlocking.c ../../../Microchip/WirelessProtocols/NVM.c ../../../Microchip/WirelessProtocols/SymbolTime.c ../../../Microchip/Transceivers/crc.c ../../../Microchip/Transceivers/security.c ../../../Microchip/Transceivers/MRF24J40/MRF24J40.c ../../../Microchip/Transceivers/MRF49XA/MRF49XA.c ../../../Microchip/Transceivers/MRF89XA/MRF89XA.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1472/HardwareProfile.o ${OBJECTDIR}/_ext/1472/AccessPoint.o ${OBJECTDIR}/_ext/1860783399/Console.o ${OBJECTDIR}/_ext/1860783399/MSPI.o ${OBJECTDIR}/_ext/1860783399/TimeDelay.o ${OBJECTDIR}/_ext/35256690/MiWi.o ${OBJECTDIR}/_ext/1109514802/P2P.o ${OBJECTDIR}/_ext/1466186449/LCDBlocking.o ${OBJECTDIR}/_ext/1466186449/NVM.o ${OBJECTDIR}/_ext/1466186449/SymbolTime.o ${OBJECTDIR}/_ext/1127682237/crc.o ${OBJECTDIR}/_ext/1127682237/security.o ${OBJECTDIR}/_ext/1061806389/MRF24J40.o ${OBJECTDIR}/_ext/1696884637/MRF49XA.o ${OBJECTDIR}/_ext/1697003801/MRF89XA.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1472/HardwareProfile.o.d ${OBJECTDIR}/_ext/1472/AccessPoint.o.d ${OBJECTDIR}/_ext/1860783399/Console.o.d ${OBJECTDIR}/_ext/1860783399/MSPI.o.d ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d ${OBJECTDIR}/_ext/35256690/MiWi.o.d ${OBJECTDIR}/_ext/1109514802/P2P.o.d ${OBJECTDIR}/_ext/1466186449/LCDBlocking.o.d ${OBJECTDIR}/_ext/1466186449/NVM.o.d ${OBJECTDIR}/_ext/1466186449/SymbolTime.o.d ${OBJECTDIR}/_ext/1127682237/crc.o.d ${OBJECTDIR}/_ext/1127682237/security.o.d ${OBJECTDIR}/_ext/1061806389/MRF24J40.o.d ${OBJECTDIR}/_ext/1696884637/MRF49XA.o.d ${OBJECTDIR}/_ext/1697003801/MRF89XA.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1472/HardwareProfile.o ${OBJECTDIR}/_ext/1472/AccessPoint.o ${OBJECTDIR}/_ext/1860783399/Console.o ${OBJECTDIR}/_ext/1860783399/MSPI.o ${OBJECTDIR}/_ext/1860783399/TimeDelay.o ${OBJECTDIR}/_ext/35256690/MiWi.o ${OBJECTDIR}/_ext/1109514802/P2P.o ${OBJECTDIR}/_ext/1466186449/LCDBlocking.o ${OBJECTDIR}/_ext/1466186449/NVM.o ${OBJECTDIR}/_ext/1466186449/SymbolTime.o ${OBJECTDIR}/_ext/1127682237/crc.o ${OBJECTDIR}/_ext/1127682237/security.o ${OBJECTDIR}/_ext/1061806389/MRF24J40.o ${OBJECTDIR}/_ext/1696884637/MRF49XA.o ${OBJECTDIR}/_ext/1697003801/MRF89XA.o

# Source Files
SOURCEFILES=../HardwareProfile.c ../AccessPoint.c ../../../Microchip/Common/Console.c ../../../Microchip/Common/MSPI.c ../../../Microchip/Common/TimeDelay.c ../../../Microchip/WirelessProtocols/MiWi/MiWi.c ../../../Microchip/WirelessProtocols/P2P/P2P.c ../../../Microchip/WirelessProtocols/LCDBlocking.c ../../../Microchip/WirelessProtocols/NVM.c ../../../Microchip/WirelessProtocols/SymbolTime.c ../../../Microchip/Transceivers/crc.c ../../../Microchip/Transceivers/security.c ../../../Microchip/Transceivers/MRF24J40/MRF24J40.c ../../../Microchip/Transceivers/MRF49XA/MRF49XA.c ../../../Microchip/Transceivers/MRF89XA/MRF89XA.c



CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk ${DISTDIR}/Access_Point.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=24F16KA102
MP_LINKER_FILE_OPTION=,--script=p24F16KA102.gld
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1472/HardwareProfile.o: ../HardwareProfile.c  .generated_files/flags/default/9c9bbd9f35e4cb2aa162c9880a6f060253dd759 .generated_files/flags/default/c124c5018d818f221a3ce0a70487f5e9b64b7468
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/HardwareProfile.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/HardwareProfile.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../HardwareProfile.c  -o ${OBJECTDIR}/_ext/1472/HardwareProfile.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1472/HardwareProfile.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O1 -I".." -I"../../../Microchip/Include" -I"../../../MiWi DE Demo/Node 2" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"." -DSIMPLE_EXAMPLE -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1472/AccessPoint.o: ../AccessPoint.c  .generated_files/flags/default/392b42d8eefaa2731e82a8a7ac7c2cfad46409a5 .generated_files/flags/default/c124c5018d818f221a3ce0a70487f5e9b64b7468
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/AccessPoint.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/AccessPoint.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../AccessPoint.c  -o ${OBJECTDIR}/_ext/1472/AccessPoint.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1472/AccessPoint.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O1 -I".." -I"../../../Microchip/Include" -I"../../../MiWi DE Demo/Node 2" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"." -DSIMPLE_EXAMPLE -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1860783399/Console.o: ../../../Microchip/Common/Console.c  .generated_files/flags/default/f6001fcb55283f6f49a217842e45354321abddc5 .generated_files/flags/default/c124c5018d818f221a3ce0a70487f5e9b64b7468
	@${MKDIR} "${OBJECTDIR}/_ext/1860783399" 
	@${RM} ${OBJECTDIR}/_ext/1860783399/Console.o.d 
	@${RM} ${OBJECTDIR}/_ext/1860783399/Console.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../Microchip/Common/Console.c  -o ${OBJECTDIR}/_ext/1860783399/Console.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1860783399/Console.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O1 -I".." -I"../../../Microchip/Include" -I"../../../MiWi DE Demo/Node 2" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"." -DSIMPLE_EXAMPLE -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1860783399/MSPI.o: ../../../Microchip/Common/MSPI.c  .generated_files/flags/default/488f6f6e5d552c8122f489f4628d881a815e10b4 .generated_files/flags/default/c124c5018d818f221a3ce0a70487f5e9b64b7468
	@${MKDIR} "${OBJECTDIR}/_ext/1860783399" 
	@${RM} ${OBJECTDIR}/_ext/1860783399/MSPI.o.d 
	@${RM} ${OBJECTDIR}/_ext/1860783399/MSPI.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../Microchip/Common/MSPI.c  -o ${OBJECTDIR}/_ext/1860783399/MSPI.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1860783399/MSPI.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O1 -I".." -I"../../../Microchip/Include" -I"../../../MiWi DE Demo/Node 2" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"." -DSIMPLE_EXAMPLE -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1860783399/TimeDelay.o: ../../../Microchip/Common/TimeDelay.c  .generated_files/flags/default/85124d5ef05e256662adf367ea229fc67cd7bc21 .generated_files/flags/default/c124c5018d818f221a3ce0a70487f5e9b64b7468
	@${MKDIR} "${OBJECTDIR}/_ext/1860783399" 
	@${RM} ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d 
	@${RM} ${OBJECTDIR}/_ext/1860783399/TimeDelay.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../Microchip/Common/TimeDelay.c  -o ${OBJECTDIR}/_ext/1860783399/TimeDelay.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O1 -I".." -I"../../../Microchip/Include" -I"../../../MiWi DE Demo/Node 2" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"." -DSIMPLE_EXAMPLE -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/35256690/MiWi.o: ../../../Microchip/WirelessProtocols/MiWi/MiWi.c  .generated_files/flags/default/c331173cf094c188e4063987f0b5fd9f1e0b8bd8 .generated_files/flags/default/c124c5018d818f221a3ce0a70487f5e9b64b7468
	@${MKDIR} "${OBJECTDIR}/_ext/35256690" 
	@${RM} ${OBJECTDIR}/_ext/35256690/MiWi.o.d 
	@${RM} ${OBJECTDIR}/_ext/35256690/MiWi.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../Microchip/WirelessProtocols/MiWi/MiWi.c  -o ${OBJECTDIR}/_ext/35256690/MiWi.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/35256690/MiWi.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O1 -I".." -I"../../../Microchip/Include" -I"../../../MiWi DE Demo/Node 2" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"." -DSIMPLE_EXAMPLE -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1109514802/P2P.o: ../../../Microchip/WirelessProtocols/P2P/P2P.c  .generated_files/flags/default/45baa8116645290c1292869b75b2157bfb478053 .generated_files/flags/default/c124c5018d818f221a3ce0a70487f5e9b64b7468
	@${MKDIR} "${OBJECTDIR}/_ext/1109514802" 
	@${RM} ${OBJECTDIR}/_ext/1109514802/P2P.o.d 
	@${RM} ${OBJECTDIR}/_ext/1109514802/P2P.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../Microchip/WirelessProtocols/P2P/P2P.c  -o ${OBJECTDIR}/_ext/1109514802/P2P.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1109514802/P2P.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O1 -I".." -I"../../../Microchip/Include" -I"../../../MiWi DE Demo/Node 2" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"." -DSIMPLE_EXAMPLE -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1466186449/LCDBlocking.o: ../../../Microchip/WirelessProtocols/LCDBlocking.c  .generated_files/flags/default/d3ced4f7e28aa5b9a92aced323612849e6fb3564 .generated_files/flags/default/c124c5018d818f221a3ce0a70487f5e9b64b7468
	@${MKDIR} "${OBJECTDIR}/_ext/1466186449" 
	@${RM} ${OBJECTDIR}/_ext/1466186449/LCDBlocking.o.d 
	@${RM} ${OBJECTDIR}/_ext/1466186449/LCDBlocking.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../Microchip/WirelessProtocols/LCDBlocking.c  -o ${OBJECTDIR}/_ext/1466186449/LCDBlocking.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1466186449/LCDBlocking.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O1 -I".." -I"../../../Microchip/Include" -I"../../../MiWi DE Demo/Node 2" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"." -DSIMPLE_EXAMPLE -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1466186449/NVM.o: ../../../Microchip/WirelessProtocols/NVM.c  .generated_files/flags/default/12d171a0d2875a0df97f976c4f96cc12266f4e93 .generated_files/flags/default/c124c5018d818f221a3ce0a70487f5e9b64b7468
	@${MKDIR} "${OBJECTDIR}/_ext/1466186449" 
	@${RM} ${OBJECTDIR}/_ext/1466186449/NVM.o.d 
	@${RM} ${OBJECTDIR}/_ext/1466186449/NVM.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../Microchip/WirelessProtocols/NVM.c  -o ${OBJECTDIR}/_ext/1466186449/NVM.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1466186449/NVM.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O1 -I".." -I"../../../Microchip/Include" -I"../../../MiWi DE Demo/Node 2" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"." -DSIMPLE_EXAMPLE -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1466186449/SymbolTime.o: ../../../Microchip/WirelessProtocols/SymbolTime.c  .generated_files/flags/default/32c878091b2c143c94724c2f23b64f8cb461c746 .generated_files/flags/default/c124c5018d818f221a3ce0a70487f5e9b64b7468
	@${MKDIR} "${OBJECTDIR}/_ext/1466186449" 
	@${RM} ${OBJECTDIR}/_ext/1466186449/SymbolTime.o.d 
	@${RM} ${OBJECTDIR}/_ext/1466186449/SymbolTime.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../Microchip/WirelessProtocols/SymbolTime.c  -o ${OBJECTDIR}/_ext/1466186449/SymbolTime.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1466186449/SymbolTime.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O1 -I".." -I"../../../Microchip/Include" -I"../../../MiWi DE Demo/Node 2" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"." -DSIMPLE_EXAMPLE -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1127682237/crc.o: ../../../Microchip/Transceivers/crc.c  .generated_files/flags/default/7cd8af56129e2214c0cc63d81e02cf7059763791 .generated_files/flags/default/c124c5018d818f221a3ce0a70487f5e9b64b7468
	@${MKDIR} "${OBJECTDIR}/_ext/1127682237" 
	@${RM} ${OBJECTDIR}/_ext/1127682237/crc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1127682237/crc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../Microchip/Transceivers/crc.c  -o ${OBJECTDIR}/_ext/1127682237/crc.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1127682237/crc.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O1 -I".." -I"../../../Microchip/Include" -I"../../../MiWi DE Demo/Node 2" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"." -DSIMPLE_EXAMPLE -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1127682237/security.o: ../../../Microchip/Transceivers/security.c  .generated_files/flags/default/e6c5d7c68c2c5d4d03aebb647fd0b92796e9138a .generated_files/flags/default/c124c5018d818f221a3ce0a70487f5e9b64b7468
	@${MKDIR} "${OBJECTDIR}/_ext/1127682237" 
	@${RM} ${OBJECTDIR}/_ext/1127682237/security.o.d 
	@${RM} ${OBJECTDIR}/_ext/1127682237/security.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../Microchip/Transceivers/security.c  -o ${OBJECTDIR}/_ext/1127682237/security.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1127682237/security.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O1 -I".." -I"../../../Microchip/Include" -I"../../../MiWi DE Demo/Node 2" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"." -DSIMPLE_EXAMPLE -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1061806389/MRF24J40.o: ../../../Microchip/Transceivers/MRF24J40/MRF24J40.c  .generated_files/flags/default/fb48345b1b36b7c6e5173ba65f69360fe1684fb5 .generated_files/flags/default/c124c5018d818f221a3ce0a70487f5e9b64b7468
	@${MKDIR} "${OBJECTDIR}/_ext/1061806389" 
	@${RM} ${OBJECTDIR}/_ext/1061806389/MRF24J40.o.d 
	@${RM} ${OBJECTDIR}/_ext/1061806389/MRF24J40.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../Microchip/Transceivers/MRF24J40/MRF24J40.c  -o ${OBJECTDIR}/_ext/1061806389/MRF24J40.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1061806389/MRF24J40.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O1 -I".." -I"../../../Microchip/Include" -I"../../../MiWi DE Demo/Node 2" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"." -DSIMPLE_EXAMPLE -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1696884637/MRF49XA.o: ../../../Microchip/Transceivers/MRF49XA/MRF49XA.c  .generated_files/flags/default/8688f731568d04b86480b150367bb082062981c5 .generated_files/flags/default/c124c5018d818f221a3ce0a70487f5e9b64b7468
	@${MKDIR} "${OBJECTDIR}/_ext/1696884637" 
	@${RM} ${OBJECTDIR}/_ext/1696884637/MRF49XA.o.d 
	@${RM} ${OBJECTDIR}/_ext/1696884637/MRF49XA.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../Microchip/Transceivers/MRF49XA/MRF49XA.c  -o ${OBJECTDIR}/_ext/1696884637/MRF49XA.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1696884637/MRF49XA.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O1 -I".." -I"../../../Microchip/Include" -I"../../../MiWi DE Demo/Node 2" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"." -DSIMPLE_EXAMPLE -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1697003801/MRF89XA.o: ../../../Microchip/Transceivers/MRF89XA/MRF89XA.c  .generated_files/flags/default/d367f4c054c710faa65d3a32dcae31e09ba58b06 .generated_files/flags/default/c124c5018d818f221a3ce0a70487f5e9b64b7468
	@${MKDIR} "${OBJECTDIR}/_ext/1697003801" 
	@${RM} ${OBJECTDIR}/_ext/1697003801/MRF89XA.o.d 
	@${RM} ${OBJECTDIR}/_ext/1697003801/MRF89XA.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../Microchip/Transceivers/MRF89XA/MRF89XA.c  -o ${OBJECTDIR}/_ext/1697003801/MRF89XA.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1697003801/MRF89XA.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O1 -I".." -I"../../../Microchip/Include" -I"../../../MiWi DE Demo/Node 2" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"." -DSIMPLE_EXAMPLE -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
else
${OBJECTDIR}/_ext/1472/HardwareProfile.o: ../HardwareProfile.c  .generated_files/flags/default/1fe167fdd292e5f38dfd4e2b51e318bb89ab5ca1 .generated_files/flags/default/c124c5018d818f221a3ce0a70487f5e9b64b7468
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/HardwareProfile.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/HardwareProfile.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../HardwareProfile.c  -o ${OBJECTDIR}/_ext/1472/HardwareProfile.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1472/HardwareProfile.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O1 -I".." -I"../../../Microchip/Include" -I"../../../MiWi DE Demo/Node 2" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"." -DSIMPLE_EXAMPLE -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1472/AccessPoint.o: ../AccessPoint.c  .generated_files/flags/default/9a713b718a3d11d759b424486c0c49f351e39c07 .generated_files/flags/default/c124c5018d818f221a3ce0a70487f5e9b64b7468
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/AccessPoint.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/AccessPoint.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../AccessPoint.c  -o ${OBJECTDIR}/_ext/1472/AccessPoint.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1472/AccessPoint.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O1 -I".." -I"../../../Microchip/Include" -I"../../../MiWi DE Demo/Node 2" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"." -DSIMPLE_EXAMPLE -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1860783399/Console.o: ../../../Microchip/Common/Console.c  .generated_files/flags/default/d522acbe424c700a67e44827a6a91e18acb8c12b .generated_files/flags/default/c124c5018d818f221a3ce0a70487f5e9b64b7468
	@${MKDIR} "${OBJECTDIR}/_ext/1860783399" 
	@${RM} ${OBJECTDIR}/_ext/1860783399/Console.o.d 
	@${RM} ${OBJECTDIR}/_ext/1860783399/Console.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../Microchip/Common/Console.c  -o ${OBJECTDIR}/_ext/1860783399/Console.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1860783399/Console.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O1 -I".." -I"../../../Microchip/Include" -I"../../../MiWi DE Demo/Node 2" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"." -DSIMPLE_EXAMPLE -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1860783399/MSPI.o: ../../../Microchip/Common/MSPI.c  .generated_files/flags/default/abd7fd5a486486a54bc7cf32c8a6fb67f15f5840 .generated_files/flags/default/c124c5018d818f221a3ce0a70487f5e9b64b7468
	@${MKDIR} "${OBJECTDIR}/_ext/1860783399" 
	@${RM} ${OBJECTDIR}/_ext/1860783399/MSPI.o.d 
	@${RM} ${OBJECTDIR}/_ext/1860783399/MSPI.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../Microchip/Common/MSPI.c  -o ${OBJECTDIR}/_ext/1860783399/MSPI.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1860783399/MSPI.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O1 -I".." -I"../../../Microchip/Include" -I"../../../MiWi DE Demo/Node 2" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"." -DSIMPLE_EXAMPLE -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1860783399/TimeDelay.o: ../../../Microchip/Common/TimeDelay.c  .generated_files/flags/default/ce1d5c07eba05e75f087e8f03f6343f00196435c .generated_files/flags/default/c124c5018d818f221a3ce0a70487f5e9b64b7468
	@${MKDIR} "${OBJECTDIR}/_ext/1860783399" 
	@${RM} ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d 
	@${RM} ${OBJECTDIR}/_ext/1860783399/TimeDelay.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../Microchip/Common/TimeDelay.c  -o ${OBJECTDIR}/_ext/1860783399/TimeDelay.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O1 -I".." -I"../../../Microchip/Include" -I"../../../MiWi DE Demo/Node 2" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"." -DSIMPLE_EXAMPLE -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/35256690/MiWi.o: ../../../Microchip/WirelessProtocols/MiWi/MiWi.c  .generated_files/flags/default/9e2373c7525ea5b0b73e0d5b8146fef49c92068c .generated_files/flags/default/c124c5018d818f221a3ce0a70487f5e9b64b7468
	@${MKDIR} "${OBJECTDIR}/_ext/35256690" 
	@${RM} ${OBJECTDIR}/_ext/35256690/MiWi.o.d 
	@${RM} ${OBJECTDIR}/_ext/35256690/MiWi.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../Microchip/WirelessProtocols/MiWi/MiWi.c  -o ${OBJECTDIR}/_ext/35256690/MiWi.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/35256690/MiWi.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O1 -I".." -I"../../../Microchip/Include" -I"../../../MiWi DE Demo/Node 2" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"." -DSIMPLE_EXAMPLE -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1109514802/P2P.o: ../../../Microchip/WirelessProtocols/P2P/P2P.c  .generated_files/flags/default/1fc6aca204fb742b0b9eb15da22b5f2328f4b0f2 .generated_files/flags/default/c124c5018d818f221a3ce0a70487f5e9b64b7468
	@${MKDIR} "${OBJECTDIR}/_ext/1109514802" 
	@${RM} ${OBJECTDIR}/_ext/1109514802/P2P.o.d 
	@${RM} ${OBJECTDIR}/_ext/1109514802/P2P.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../Microchip/WirelessProtocols/P2P/P2P.c  -o ${OBJECTDIR}/_ext/1109514802/P2P.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1109514802/P2P.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O1 -I".." -I"../../../Microchip/Include" -I"../../../MiWi DE Demo/Node 2" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"." -DSIMPLE_EXAMPLE -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1466186449/LCDBlocking.o: ../../../Microchip/WirelessProtocols/LCDBlocking.c  .generated_files/flags/default/d57801b1e0b478d1b67739a2c44d1fe7ae7193d3 .generated_files/flags/default/c124c5018d818f221a3ce0a70487f5e9b64b7468
	@${MKDIR} "${OBJECTDIR}/_ext/1466186449" 
	@${RM} ${OBJECTDIR}/_ext/1466186449/LCDBlocking.o.d 
	@${RM} ${OBJECTDIR}/_ext/1466186449/LCDBlocking.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../Microchip/WirelessProtocols/LCDBlocking.c  -o ${OBJECTDIR}/_ext/1466186449/LCDBlocking.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1466186449/LCDBlocking.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O1 -I".." -I"../../../Microchip/Include" -I"../../../MiWi DE Demo/Node 2" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"." -DSIMPLE_EXAMPLE -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1466186449/NVM.o: ../../../Microchip/WirelessProtocols/NVM.c  .generated_files/flags/default/bfb7a60588017637f1351c8014f782d85f2095ed .generated_files/flags/default/c124c5018d818f221a3ce0a70487f5e9b64b7468
	@${MKDIR} "${OBJECTDIR}/_ext/1466186449" 
	@${RM} ${OBJECTDIR}/_ext/1466186449/NVM.o.d 
	@${RM} ${OBJECTDIR}/_ext/1466186449/NVM.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../Microchip/WirelessProtocols/NVM.c  -o ${OBJECTDIR}/_ext/1466186449/NVM.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1466186449/NVM.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O1 -I".." -I"../../../Microchip/Include" -I"../../../MiWi DE Demo/Node 2" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"." -DSIMPLE_EXAMPLE -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1466186449/SymbolTime.o: ../../../Microchip/WirelessProtocols/SymbolTime.c  .generated_files/flags/default/47c443d31a404ba35b3d8e504858f31bae073dba .generated_files/flags/default/c124c5018d818f221a3ce0a70487f5e9b64b7468
	@${MKDIR} "${OBJECTDIR}/_ext/1466186449" 
	@${RM} ${OBJECTDIR}/_ext/1466186449/SymbolTime.o.d 
	@${RM} ${OBJECTDIR}/_ext/1466186449/SymbolTime.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../Microchip/WirelessProtocols/SymbolTime.c  -o ${OBJECTDIR}/_ext/1466186449/SymbolTime.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1466186449/SymbolTime.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O1 -I".." -I"../../../Microchip/Include" -I"../../../MiWi DE Demo/Node 2" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"." -DSIMPLE_EXAMPLE -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1127682237/crc.o: ../../../Microchip/Transceivers/crc.c  .generated_files/flags/default/a83b17e15c4fb240440393f1202a03ba39cf90f2 .generated_files/flags/default/c124c5018d818f221a3ce0a70487f5e9b64b7468
	@${MKDIR} "${OBJECTDIR}/_ext/1127682237" 
	@${RM} ${OBJECTDIR}/_ext/1127682237/crc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1127682237/crc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../Microchip/Transceivers/crc.c  -o ${OBJECTDIR}/_ext/1127682237/crc.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1127682237/crc.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O1 -I".." -I"../../../Microchip/Include" -I"../../../MiWi DE Demo/Node 2" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"." -DSIMPLE_EXAMPLE -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1127682237/security.o: ../../../Microchip/Transceivers/security.c  .generated_files/flags/default/38142d49e5c5b1fdcab2dd5d5035debdba6da9d9 .generated_files/flags/default/c124c5018d818f221a3ce0a70487f5e9b64b7468
	@${MKDIR} "${OBJECTDIR}/_ext/1127682237" 
	@${RM} ${OBJECTDIR}/_ext/1127682237/security.o.d 
	@${RM} ${OBJECTDIR}/_ext/1127682237/security.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../Microchip/Transceivers/security.c  -o ${OBJECTDIR}/_ext/1127682237/security.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1127682237/security.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O1 -I".." -I"../../../Microchip/Include" -I"../../../MiWi DE Demo/Node 2" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"." -DSIMPLE_EXAMPLE -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1061806389/MRF24J40.o: ../../../Microchip/Transceivers/MRF24J40/MRF24J40.c  .generated_files/flags/default/4b7bc4fe962700fc2ec3bd43621912682eb84185 .generated_files/flags/default/c124c5018d818f221a3ce0a70487f5e9b64b7468
	@${MKDIR} "${OBJECTDIR}/_ext/1061806389" 
	@${RM} ${OBJECTDIR}/_ext/1061806389/MRF24J40.o.d 
	@${RM} ${OBJECTDIR}/_ext/1061806389/MRF24J40.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../Microchip/Transceivers/MRF24J40/MRF24J40.c  -o ${OBJECTDIR}/_ext/1061806389/MRF24J40.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1061806389/MRF24J40.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O1 -I".." -I"../../../Microchip/Include" -I"../../../MiWi DE Demo/Node 2" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"." -DSIMPLE_EXAMPLE -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1696884637/MRF49XA.o: ../../../Microchip/Transceivers/MRF49XA/MRF49XA.c  .generated_files/flags/default/b915359f7c0fa6fa1c03636319f8e3e0a64980fc .generated_files/flags/default/c124c5018d818f221a3ce0a70487f5e9b64b7468
	@${MKDIR} "${OBJECTDIR}/_ext/1696884637" 
	@${RM} ${OBJECTDIR}/_ext/1696884637/MRF49XA.o.d 
	@${RM} ${OBJECTDIR}/_ext/1696884637/MRF49XA.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../Microchip/Transceivers/MRF49XA/MRF49XA.c  -o ${OBJECTDIR}/_ext/1696884637/MRF49XA.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1696884637/MRF49XA.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O1 -I".." -I"../../../Microchip/Include" -I"../../../MiWi DE Demo/Node 2" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"." -DSIMPLE_EXAMPLE -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1697003801/MRF89XA.o: ../../../Microchip/Transceivers/MRF89XA/MRF89XA.c  .generated_files/flags/default/2bb2f2eb0ef3a35931ebaceb7f83c131425b828c .generated_files/flags/default/c124c5018d818f221a3ce0a70487f5e9b64b7468
	@${MKDIR} "${OBJECTDIR}/_ext/1697003801" 
	@${RM} ${OBJECTDIR}/_ext/1697003801/MRF89XA.o.d 
	@${RM} ${OBJECTDIR}/_ext/1697003801/MRF89XA.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../Microchip/Transceivers/MRF89XA/MRF89XA.c  -o ${OBJECTDIR}/_ext/1697003801/MRF89XA.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1697003801/MRF89XA.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O1 -I".." -I"../../../Microchip/Include" -I"../../../MiWi DE Demo/Node 2" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"." -DSIMPLE_EXAMPLE -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemblePreproc
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/Access_Point.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o ${DISTDIR}/Access_Point.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -D__DEBUG=__DEBUG   -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)   -mreserve=data@0x800:0x81F -mreserve=data@0x820:0x821 -mreserve=data@0x822:0x823 -mreserve=data@0x824:0x825 -mreserve=data@0x826:0x84F   -Wl,,,--defsym=__MPLAB_BUILD=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D__DEBUG=__DEBUG,,$(MP_LINKER_FILE_OPTION),--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--library-path="..",--library-path=".",--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.Access_Point.X.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml$(MP_EXTRA_LD_POST)  -mdfp="${DFP_DIR}/xc16" 
	
else
${DISTDIR}/Access_Point.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o ${DISTDIR}/Access_Point.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,,,--defsym=__MPLAB_BUILD=1,$(MP_LINKER_FILE_OPTION),--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--library-path="..",--library-path=".",--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.Access_Point.X.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml$(MP_EXTRA_LD_POST)  -mdfp="${DFP_DIR}/xc16" 
	${MP_CC_DIR}/xc16-bin2hex ${DISTDIR}/Access_Point.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} -a  -omf=elf   -mdfp="${DFP_DIR}/xc16" 
	
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${OBJECTDIR}
	${RM} -r ${DISTDIR}

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell "${PATH_TO_IDE_BIN}"mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif

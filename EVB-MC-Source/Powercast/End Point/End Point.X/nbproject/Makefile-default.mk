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
FINAL_IMAGE=${DISTDIR}/End_Point.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/End_Point.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
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
SOURCEFILES_QUOTED_IF_SPACED=../HardwareProfile.c ../EndPoint.c ../../../Microchip/Common/Console.c ../../../Microchip/Common/MSPI.c ../../../Microchip/Common/TimeDelay.c ../../../Microchip/WirelessProtocols/NVM.c ../../../Microchip/WirelessProtocols/MiWi/MiWi.c ../../../Microchip/WirelessProtocols/P2P/P2P.c ../../../Microchip/WirelessProtocols/SymbolTime.c ../../../Microchip/Transceivers/crc.c ../../../Microchip/Transceivers/MRF24J40/MRF24J40.c ../../../Microchip/Transceivers/MRF49XA/MRF49XA.c ../../../Microchip/Transceivers/security.c ../../../Microchip/Transceivers/MRF89XA/MRF89XA.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1472/HardwareProfile.o ${OBJECTDIR}/_ext/1472/EndPoint.o ${OBJECTDIR}/_ext/1860783399/Console.o ${OBJECTDIR}/_ext/1860783399/MSPI.o ${OBJECTDIR}/_ext/1860783399/TimeDelay.o ${OBJECTDIR}/_ext/1466186449/NVM.o ${OBJECTDIR}/_ext/35256690/MiWi.o ${OBJECTDIR}/_ext/1109514802/P2P.o ${OBJECTDIR}/_ext/1466186449/SymbolTime.o ${OBJECTDIR}/_ext/1127682237/crc.o ${OBJECTDIR}/_ext/1061806389/MRF24J40.o ${OBJECTDIR}/_ext/1696884637/MRF49XA.o ${OBJECTDIR}/_ext/1127682237/security.o ${OBJECTDIR}/_ext/1697003801/MRF89XA.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1472/HardwareProfile.o.d ${OBJECTDIR}/_ext/1472/EndPoint.o.d ${OBJECTDIR}/_ext/1860783399/Console.o.d ${OBJECTDIR}/_ext/1860783399/MSPI.o.d ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d ${OBJECTDIR}/_ext/1466186449/NVM.o.d ${OBJECTDIR}/_ext/35256690/MiWi.o.d ${OBJECTDIR}/_ext/1109514802/P2P.o.d ${OBJECTDIR}/_ext/1466186449/SymbolTime.o.d ${OBJECTDIR}/_ext/1127682237/crc.o.d ${OBJECTDIR}/_ext/1061806389/MRF24J40.o.d ${OBJECTDIR}/_ext/1696884637/MRF49XA.o.d ${OBJECTDIR}/_ext/1127682237/security.o.d ${OBJECTDIR}/_ext/1697003801/MRF89XA.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1472/HardwareProfile.o ${OBJECTDIR}/_ext/1472/EndPoint.o ${OBJECTDIR}/_ext/1860783399/Console.o ${OBJECTDIR}/_ext/1860783399/MSPI.o ${OBJECTDIR}/_ext/1860783399/TimeDelay.o ${OBJECTDIR}/_ext/1466186449/NVM.o ${OBJECTDIR}/_ext/35256690/MiWi.o ${OBJECTDIR}/_ext/1109514802/P2P.o ${OBJECTDIR}/_ext/1466186449/SymbolTime.o ${OBJECTDIR}/_ext/1127682237/crc.o ${OBJECTDIR}/_ext/1061806389/MRF24J40.o ${OBJECTDIR}/_ext/1696884637/MRF49XA.o ${OBJECTDIR}/_ext/1127682237/security.o ${OBJECTDIR}/_ext/1697003801/MRF89XA.o

# Source Files
SOURCEFILES=../HardwareProfile.c ../EndPoint.c ../../../Microchip/Common/Console.c ../../../Microchip/Common/MSPI.c ../../../Microchip/Common/TimeDelay.c ../../../Microchip/WirelessProtocols/NVM.c ../../../Microchip/WirelessProtocols/MiWi/MiWi.c ../../../Microchip/WirelessProtocols/P2P/P2P.c ../../../Microchip/WirelessProtocols/SymbolTime.c ../../../Microchip/Transceivers/crc.c ../../../Microchip/Transceivers/MRF24J40/MRF24J40.c ../../../Microchip/Transceivers/MRF49XA/MRF49XA.c ../../../Microchip/Transceivers/security.c ../../../Microchip/Transceivers/MRF89XA/MRF89XA.c



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
	${MAKE}  -f nbproject/Makefile-default.mk ${DISTDIR}/End_Point.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=24F16KA102
MP_LINKER_FILE_OPTION=,--script=p24F16KA102.gld
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1472/HardwareProfile.o: ../HardwareProfile.c  .generated_files/flags/default/9b67f688943caefe190d60d9479f716f0ec2208 .generated_files/flags/default/c124c5018d818f221a3ce0a70487f5e9b64b7468
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/HardwareProfile.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/HardwareProfile.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../HardwareProfile.c  -o ${OBJECTDIR}/_ext/1472/HardwareProfile.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1472/HardwareProfile.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O1 -I".." -I"../../../Microchip/Include" -I"../../../MiWi DE Demo/Node 1" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"." -DSIMPLE_EXAMPLE -msmart-io=1 -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1472/EndPoint.o: ../EndPoint.c  .generated_files/flags/default/fe795484913835d5bdb4baecaa1b0d5a33332b38 .generated_files/flags/default/c124c5018d818f221a3ce0a70487f5e9b64b7468
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/EndPoint.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/EndPoint.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../EndPoint.c  -o ${OBJECTDIR}/_ext/1472/EndPoint.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1472/EndPoint.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O1 -I".." -I"../../../Microchip/Include" -I"../../../MiWi DE Demo/Node 1" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"." -DSIMPLE_EXAMPLE -msmart-io=1 -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1860783399/Console.o: ../../../Microchip/Common/Console.c  .generated_files/flags/default/c711a0fd561b966e5f46e6b421f2e6770159d90a .generated_files/flags/default/c124c5018d818f221a3ce0a70487f5e9b64b7468
	@${MKDIR} "${OBJECTDIR}/_ext/1860783399" 
	@${RM} ${OBJECTDIR}/_ext/1860783399/Console.o.d 
	@${RM} ${OBJECTDIR}/_ext/1860783399/Console.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../Microchip/Common/Console.c  -o ${OBJECTDIR}/_ext/1860783399/Console.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1860783399/Console.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O1 -I".." -I"../../../Microchip/Include" -I"../../../MiWi DE Demo/Node 1" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"." -DSIMPLE_EXAMPLE -msmart-io=1 -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1860783399/MSPI.o: ../../../Microchip/Common/MSPI.c  .generated_files/flags/default/232d10b3d93dcda75711c9d80cbb7bfcda5b7e3 .generated_files/flags/default/c124c5018d818f221a3ce0a70487f5e9b64b7468
	@${MKDIR} "${OBJECTDIR}/_ext/1860783399" 
	@${RM} ${OBJECTDIR}/_ext/1860783399/MSPI.o.d 
	@${RM} ${OBJECTDIR}/_ext/1860783399/MSPI.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../Microchip/Common/MSPI.c  -o ${OBJECTDIR}/_ext/1860783399/MSPI.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1860783399/MSPI.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O1 -I".." -I"../../../Microchip/Include" -I"../../../MiWi DE Demo/Node 1" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"." -DSIMPLE_EXAMPLE -msmart-io=1 -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1860783399/TimeDelay.o: ../../../Microchip/Common/TimeDelay.c  .generated_files/flags/default/266f0dfaa9384f443a049681a537a3af5e1085e9 .generated_files/flags/default/c124c5018d818f221a3ce0a70487f5e9b64b7468
	@${MKDIR} "${OBJECTDIR}/_ext/1860783399" 
	@${RM} ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d 
	@${RM} ${OBJECTDIR}/_ext/1860783399/TimeDelay.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../Microchip/Common/TimeDelay.c  -o ${OBJECTDIR}/_ext/1860783399/TimeDelay.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O1 -I".." -I"../../../Microchip/Include" -I"../../../MiWi DE Demo/Node 1" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"." -DSIMPLE_EXAMPLE -msmart-io=1 -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1466186449/NVM.o: ../../../Microchip/WirelessProtocols/NVM.c  .generated_files/flags/default/84efdd41c5762ddbd55003d4c9f9de8194a57c9e .generated_files/flags/default/c124c5018d818f221a3ce0a70487f5e9b64b7468
	@${MKDIR} "${OBJECTDIR}/_ext/1466186449" 
	@${RM} ${OBJECTDIR}/_ext/1466186449/NVM.o.d 
	@${RM} ${OBJECTDIR}/_ext/1466186449/NVM.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../Microchip/WirelessProtocols/NVM.c  -o ${OBJECTDIR}/_ext/1466186449/NVM.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1466186449/NVM.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O1 -I".." -I"../../../Microchip/Include" -I"../../../MiWi DE Demo/Node 1" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"." -DSIMPLE_EXAMPLE -msmart-io=1 -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/35256690/MiWi.o: ../../../Microchip/WirelessProtocols/MiWi/MiWi.c  .generated_files/flags/default/cb2428ec5b0f3c097b031bd5726107ef3c668934 .generated_files/flags/default/c124c5018d818f221a3ce0a70487f5e9b64b7468
	@${MKDIR} "${OBJECTDIR}/_ext/35256690" 
	@${RM} ${OBJECTDIR}/_ext/35256690/MiWi.o.d 
	@${RM} ${OBJECTDIR}/_ext/35256690/MiWi.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../Microchip/WirelessProtocols/MiWi/MiWi.c  -o ${OBJECTDIR}/_ext/35256690/MiWi.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/35256690/MiWi.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O1 -I".." -I"../../../Microchip/Include" -I"../../../MiWi DE Demo/Node 1" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"." -DSIMPLE_EXAMPLE -msmart-io=1 -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1109514802/P2P.o: ../../../Microchip/WirelessProtocols/P2P/P2P.c  .generated_files/flags/default/2a856a936084e592b1a0044e66bd25fadb1cebba .generated_files/flags/default/c124c5018d818f221a3ce0a70487f5e9b64b7468
	@${MKDIR} "${OBJECTDIR}/_ext/1109514802" 
	@${RM} ${OBJECTDIR}/_ext/1109514802/P2P.o.d 
	@${RM} ${OBJECTDIR}/_ext/1109514802/P2P.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../Microchip/WirelessProtocols/P2P/P2P.c  -o ${OBJECTDIR}/_ext/1109514802/P2P.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1109514802/P2P.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O1 -I".." -I"../../../Microchip/Include" -I"../../../MiWi DE Demo/Node 1" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"." -DSIMPLE_EXAMPLE -msmart-io=1 -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1466186449/SymbolTime.o: ../../../Microchip/WirelessProtocols/SymbolTime.c  .generated_files/flags/default/c47118cdb025dc13717a0f9f0a7b9bca160794ab .generated_files/flags/default/c124c5018d818f221a3ce0a70487f5e9b64b7468
	@${MKDIR} "${OBJECTDIR}/_ext/1466186449" 
	@${RM} ${OBJECTDIR}/_ext/1466186449/SymbolTime.o.d 
	@${RM} ${OBJECTDIR}/_ext/1466186449/SymbolTime.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../Microchip/WirelessProtocols/SymbolTime.c  -o ${OBJECTDIR}/_ext/1466186449/SymbolTime.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1466186449/SymbolTime.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O1 -I".." -I"../../../Microchip/Include" -I"../../../MiWi DE Demo/Node 1" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"." -DSIMPLE_EXAMPLE -msmart-io=1 -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1127682237/crc.o: ../../../Microchip/Transceivers/crc.c  .generated_files/flags/default/859da99fe1f79b9d6c09cdcc3f9905878944bbc8 .generated_files/flags/default/c124c5018d818f221a3ce0a70487f5e9b64b7468
	@${MKDIR} "${OBJECTDIR}/_ext/1127682237" 
	@${RM} ${OBJECTDIR}/_ext/1127682237/crc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1127682237/crc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../Microchip/Transceivers/crc.c  -o ${OBJECTDIR}/_ext/1127682237/crc.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1127682237/crc.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O1 -I".." -I"../../../Microchip/Include" -I"../../../MiWi DE Demo/Node 1" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"." -DSIMPLE_EXAMPLE -msmart-io=1 -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1061806389/MRF24J40.o: ../../../Microchip/Transceivers/MRF24J40/MRF24J40.c  .generated_files/flags/default/62cc43fe76f82dbdc114dafdf7ae650e0e04fa44 .generated_files/flags/default/c124c5018d818f221a3ce0a70487f5e9b64b7468
	@${MKDIR} "${OBJECTDIR}/_ext/1061806389" 
	@${RM} ${OBJECTDIR}/_ext/1061806389/MRF24J40.o.d 
	@${RM} ${OBJECTDIR}/_ext/1061806389/MRF24J40.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../Microchip/Transceivers/MRF24J40/MRF24J40.c  -o ${OBJECTDIR}/_ext/1061806389/MRF24J40.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1061806389/MRF24J40.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O1 -I".." -I"../../../Microchip/Include" -I"../../../MiWi DE Demo/Node 1" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"." -DSIMPLE_EXAMPLE -msmart-io=1 -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1696884637/MRF49XA.o: ../../../Microchip/Transceivers/MRF49XA/MRF49XA.c  .generated_files/flags/default/eedd901c067c908e81b946c09060dee055125293 .generated_files/flags/default/c124c5018d818f221a3ce0a70487f5e9b64b7468
	@${MKDIR} "${OBJECTDIR}/_ext/1696884637" 
	@${RM} ${OBJECTDIR}/_ext/1696884637/MRF49XA.o.d 
	@${RM} ${OBJECTDIR}/_ext/1696884637/MRF49XA.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../Microchip/Transceivers/MRF49XA/MRF49XA.c  -o ${OBJECTDIR}/_ext/1696884637/MRF49XA.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1696884637/MRF49XA.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O1 -I".." -I"../../../Microchip/Include" -I"../../../MiWi DE Demo/Node 1" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"." -DSIMPLE_EXAMPLE -msmart-io=1 -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1127682237/security.o: ../../../Microchip/Transceivers/security.c  .generated_files/flags/default/7bfb89f5dfd8d0c12d2c6ba16de3ef1a233c3210 .generated_files/flags/default/c124c5018d818f221a3ce0a70487f5e9b64b7468
	@${MKDIR} "${OBJECTDIR}/_ext/1127682237" 
	@${RM} ${OBJECTDIR}/_ext/1127682237/security.o.d 
	@${RM} ${OBJECTDIR}/_ext/1127682237/security.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../Microchip/Transceivers/security.c  -o ${OBJECTDIR}/_ext/1127682237/security.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1127682237/security.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O1 -I".." -I"../../../Microchip/Include" -I"../../../MiWi DE Demo/Node 1" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"." -DSIMPLE_EXAMPLE -msmart-io=1 -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1697003801/MRF89XA.o: ../../../Microchip/Transceivers/MRF89XA/MRF89XA.c  .generated_files/flags/default/ad86f0f87fb5857582a8c15e4b20e83631dabc1 .generated_files/flags/default/c124c5018d818f221a3ce0a70487f5e9b64b7468
	@${MKDIR} "${OBJECTDIR}/_ext/1697003801" 
	@${RM} ${OBJECTDIR}/_ext/1697003801/MRF89XA.o.d 
	@${RM} ${OBJECTDIR}/_ext/1697003801/MRF89XA.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../Microchip/Transceivers/MRF89XA/MRF89XA.c  -o ${OBJECTDIR}/_ext/1697003801/MRF89XA.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1697003801/MRF89XA.o.d"      -g -D__DEBUG     -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O1 -I".." -I"../../../Microchip/Include" -I"../../../MiWi DE Demo/Node 1" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"." -DSIMPLE_EXAMPLE -msmart-io=1 -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
else
${OBJECTDIR}/_ext/1472/HardwareProfile.o: ../HardwareProfile.c  .generated_files/flags/default/87e87b53b470770fcf262321c5a952d4dc414477 .generated_files/flags/default/c124c5018d818f221a3ce0a70487f5e9b64b7468
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/HardwareProfile.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/HardwareProfile.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../HardwareProfile.c  -o ${OBJECTDIR}/_ext/1472/HardwareProfile.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1472/HardwareProfile.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O1 -I".." -I"../../../Microchip/Include" -I"../../../MiWi DE Demo/Node 1" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"." -DSIMPLE_EXAMPLE -msmart-io=1 -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1472/EndPoint.o: ../EndPoint.c  .generated_files/flags/default/55cd37f557e8a7c3ca76e7d0a7430c8690203bb2 .generated_files/flags/default/c124c5018d818f221a3ce0a70487f5e9b64b7468
	@${MKDIR} "${OBJECTDIR}/_ext/1472" 
	@${RM} ${OBJECTDIR}/_ext/1472/EndPoint.o.d 
	@${RM} ${OBJECTDIR}/_ext/1472/EndPoint.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../EndPoint.c  -o ${OBJECTDIR}/_ext/1472/EndPoint.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1472/EndPoint.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O1 -I".." -I"../../../Microchip/Include" -I"../../../MiWi DE Demo/Node 1" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"." -DSIMPLE_EXAMPLE -msmart-io=1 -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1860783399/Console.o: ../../../Microchip/Common/Console.c  .generated_files/flags/default/2bc6bbe19bcfc2dd2212fd3cc9b8f92aeb77267a .generated_files/flags/default/c124c5018d818f221a3ce0a70487f5e9b64b7468
	@${MKDIR} "${OBJECTDIR}/_ext/1860783399" 
	@${RM} ${OBJECTDIR}/_ext/1860783399/Console.o.d 
	@${RM} ${OBJECTDIR}/_ext/1860783399/Console.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../Microchip/Common/Console.c  -o ${OBJECTDIR}/_ext/1860783399/Console.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1860783399/Console.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O1 -I".." -I"../../../Microchip/Include" -I"../../../MiWi DE Demo/Node 1" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"." -DSIMPLE_EXAMPLE -msmart-io=1 -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1860783399/MSPI.o: ../../../Microchip/Common/MSPI.c  .generated_files/flags/default/f54e6467637ffe787c8a2a4f9a9a5830ee8dc6c6 .generated_files/flags/default/c124c5018d818f221a3ce0a70487f5e9b64b7468
	@${MKDIR} "${OBJECTDIR}/_ext/1860783399" 
	@${RM} ${OBJECTDIR}/_ext/1860783399/MSPI.o.d 
	@${RM} ${OBJECTDIR}/_ext/1860783399/MSPI.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../Microchip/Common/MSPI.c  -o ${OBJECTDIR}/_ext/1860783399/MSPI.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1860783399/MSPI.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O1 -I".." -I"../../../Microchip/Include" -I"../../../MiWi DE Demo/Node 1" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"." -DSIMPLE_EXAMPLE -msmart-io=1 -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1860783399/TimeDelay.o: ../../../Microchip/Common/TimeDelay.c  .generated_files/flags/default/e93372d4ed8ebb506987c59d4c8c3ae6075c9b4b .generated_files/flags/default/c124c5018d818f221a3ce0a70487f5e9b64b7468
	@${MKDIR} "${OBJECTDIR}/_ext/1860783399" 
	@${RM} ${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d 
	@${RM} ${OBJECTDIR}/_ext/1860783399/TimeDelay.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../Microchip/Common/TimeDelay.c  -o ${OBJECTDIR}/_ext/1860783399/TimeDelay.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1860783399/TimeDelay.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O1 -I".." -I"../../../Microchip/Include" -I"../../../MiWi DE Demo/Node 1" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"." -DSIMPLE_EXAMPLE -msmart-io=1 -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1466186449/NVM.o: ../../../Microchip/WirelessProtocols/NVM.c  .generated_files/flags/default/300f084b72fe9f9cbb4c88a787779396419a7a6d .generated_files/flags/default/c124c5018d818f221a3ce0a70487f5e9b64b7468
	@${MKDIR} "${OBJECTDIR}/_ext/1466186449" 
	@${RM} ${OBJECTDIR}/_ext/1466186449/NVM.o.d 
	@${RM} ${OBJECTDIR}/_ext/1466186449/NVM.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../Microchip/WirelessProtocols/NVM.c  -o ${OBJECTDIR}/_ext/1466186449/NVM.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1466186449/NVM.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O1 -I".." -I"../../../Microchip/Include" -I"../../../MiWi DE Demo/Node 1" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"." -DSIMPLE_EXAMPLE -msmart-io=1 -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/35256690/MiWi.o: ../../../Microchip/WirelessProtocols/MiWi/MiWi.c  .generated_files/flags/default/598945e1c5af2986d53ab1e0e1c1fc0b4351b3d3 .generated_files/flags/default/c124c5018d818f221a3ce0a70487f5e9b64b7468
	@${MKDIR} "${OBJECTDIR}/_ext/35256690" 
	@${RM} ${OBJECTDIR}/_ext/35256690/MiWi.o.d 
	@${RM} ${OBJECTDIR}/_ext/35256690/MiWi.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../Microchip/WirelessProtocols/MiWi/MiWi.c  -o ${OBJECTDIR}/_ext/35256690/MiWi.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/35256690/MiWi.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O1 -I".." -I"../../../Microchip/Include" -I"../../../MiWi DE Demo/Node 1" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"." -DSIMPLE_EXAMPLE -msmart-io=1 -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1109514802/P2P.o: ../../../Microchip/WirelessProtocols/P2P/P2P.c  .generated_files/flags/default/fb8d2a0145869f600ed1ce2a1ae1448e0cb9bfe0 .generated_files/flags/default/c124c5018d818f221a3ce0a70487f5e9b64b7468
	@${MKDIR} "${OBJECTDIR}/_ext/1109514802" 
	@${RM} ${OBJECTDIR}/_ext/1109514802/P2P.o.d 
	@${RM} ${OBJECTDIR}/_ext/1109514802/P2P.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../Microchip/WirelessProtocols/P2P/P2P.c  -o ${OBJECTDIR}/_ext/1109514802/P2P.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1109514802/P2P.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O1 -I".." -I"../../../Microchip/Include" -I"../../../MiWi DE Demo/Node 1" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"." -DSIMPLE_EXAMPLE -msmart-io=1 -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1466186449/SymbolTime.o: ../../../Microchip/WirelessProtocols/SymbolTime.c  .generated_files/flags/default/8a6ae832746c432427a5c17100571ec3a7128567 .generated_files/flags/default/c124c5018d818f221a3ce0a70487f5e9b64b7468
	@${MKDIR} "${OBJECTDIR}/_ext/1466186449" 
	@${RM} ${OBJECTDIR}/_ext/1466186449/SymbolTime.o.d 
	@${RM} ${OBJECTDIR}/_ext/1466186449/SymbolTime.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../Microchip/WirelessProtocols/SymbolTime.c  -o ${OBJECTDIR}/_ext/1466186449/SymbolTime.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1466186449/SymbolTime.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O1 -I".." -I"../../../Microchip/Include" -I"../../../MiWi DE Demo/Node 1" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"." -DSIMPLE_EXAMPLE -msmart-io=1 -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1127682237/crc.o: ../../../Microchip/Transceivers/crc.c  .generated_files/flags/default/4cce5ff470cd027a8434a4b71e151f3159ad0161 .generated_files/flags/default/c124c5018d818f221a3ce0a70487f5e9b64b7468
	@${MKDIR} "${OBJECTDIR}/_ext/1127682237" 
	@${RM} ${OBJECTDIR}/_ext/1127682237/crc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1127682237/crc.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../Microchip/Transceivers/crc.c  -o ${OBJECTDIR}/_ext/1127682237/crc.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1127682237/crc.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O1 -I".." -I"../../../Microchip/Include" -I"../../../MiWi DE Demo/Node 1" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"." -DSIMPLE_EXAMPLE -msmart-io=1 -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1061806389/MRF24J40.o: ../../../Microchip/Transceivers/MRF24J40/MRF24J40.c  .generated_files/flags/default/740f450f9591b4b2da3ce747372d9382c61c842b .generated_files/flags/default/c124c5018d818f221a3ce0a70487f5e9b64b7468
	@${MKDIR} "${OBJECTDIR}/_ext/1061806389" 
	@${RM} ${OBJECTDIR}/_ext/1061806389/MRF24J40.o.d 
	@${RM} ${OBJECTDIR}/_ext/1061806389/MRF24J40.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../Microchip/Transceivers/MRF24J40/MRF24J40.c  -o ${OBJECTDIR}/_ext/1061806389/MRF24J40.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1061806389/MRF24J40.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O1 -I".." -I"../../../Microchip/Include" -I"../../../MiWi DE Demo/Node 1" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"." -DSIMPLE_EXAMPLE -msmart-io=1 -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1696884637/MRF49XA.o: ../../../Microchip/Transceivers/MRF49XA/MRF49XA.c  .generated_files/flags/default/1b775446dfff33a83139e53ec00b5159f7de6e94 .generated_files/flags/default/c124c5018d818f221a3ce0a70487f5e9b64b7468
	@${MKDIR} "${OBJECTDIR}/_ext/1696884637" 
	@${RM} ${OBJECTDIR}/_ext/1696884637/MRF49XA.o.d 
	@${RM} ${OBJECTDIR}/_ext/1696884637/MRF49XA.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../Microchip/Transceivers/MRF49XA/MRF49XA.c  -o ${OBJECTDIR}/_ext/1696884637/MRF49XA.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1696884637/MRF49XA.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O1 -I".." -I"../../../Microchip/Include" -I"../../../MiWi DE Demo/Node 1" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"." -DSIMPLE_EXAMPLE -msmart-io=1 -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1127682237/security.o: ../../../Microchip/Transceivers/security.c  .generated_files/flags/default/791743dd4b23fd3b0d25641d219289303189a07e .generated_files/flags/default/c124c5018d818f221a3ce0a70487f5e9b64b7468
	@${MKDIR} "${OBJECTDIR}/_ext/1127682237" 
	@${RM} ${OBJECTDIR}/_ext/1127682237/security.o.d 
	@${RM} ${OBJECTDIR}/_ext/1127682237/security.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../Microchip/Transceivers/security.c  -o ${OBJECTDIR}/_ext/1127682237/security.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1127682237/security.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O1 -I".." -I"../../../Microchip/Include" -I"../../../MiWi DE Demo/Node 1" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"." -DSIMPLE_EXAMPLE -msmart-io=1 -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/_ext/1697003801/MRF89XA.o: ../../../Microchip/Transceivers/MRF89XA/MRF89XA.c  .generated_files/flags/default/d45cc8a9933bb3a2be9095b0289aca3f9a03a6fb .generated_files/flags/default/c124c5018d818f221a3ce0a70487f5e9b64b7468
	@${MKDIR} "${OBJECTDIR}/_ext/1697003801" 
	@${RM} ${OBJECTDIR}/_ext/1697003801/MRF89XA.o.d 
	@${RM} ${OBJECTDIR}/_ext/1697003801/MRF89XA.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  ../../../Microchip/Transceivers/MRF89XA/MRF89XA.c  -o ${OBJECTDIR}/_ext/1697003801/MRF89XA.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/_ext/1697003801/MRF89XA.o.d"        -g -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O1 -I".." -I"../../../Microchip/Include" -I"../../../MiWi DE Demo/Node 1" -I"../../../Microchip/Include/WirelessProtocols/P2P" -I"../../../Microchip/Include/Transceivers" -I"../../../Microchip/Include/Transceivers/MRF49XA" -I"../../../Microchip/Include/Transceivers/MRF24J40" -I"../../../Microchip/Include/WirelessProtocols" -I"../../../Microchip/Include/WirelessProtocols/MiWi" -I"../../../Microchip/Include/Transceivers/MRF89XA" -I"." -DSIMPLE_EXAMPLE -msmart-io=1 -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
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
${DISTDIR}/End_Point.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o ${DISTDIR}/End_Point.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -D__DEBUG=__DEBUG   -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)   -mreserve=data@0x800:0x81F -mreserve=data@0x820:0x821 -mreserve=data@0x822:0x823 -mreserve=data@0x824:0x825 -mreserve=data@0x826:0x84F   -Wl,,,--defsym=__MPLAB_BUILD=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D__DEBUG=__DEBUG,,$(MP_LINKER_FILE_OPTION),--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--library-path="..",--library-path=".",--no-force-link,--smart-io,-Map="End_Point.X.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml$(MP_EXTRA_LD_POST)  -mdfp="${DFP_DIR}/xc16" 
	
else
${DISTDIR}/End_Point.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o ${DISTDIR}/End_Point.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -omf=elf -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,,,--defsym=__MPLAB_BUILD=1,$(MP_LINKER_FILE_OPTION),--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--library-path="..",--library-path=".",--no-force-link,--smart-io,-Map="End_Point.X.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml$(MP_EXTRA_LD_POST)  -mdfp="${DFP_DIR}/xc16" 
	${MP_CC_DIR}/xc16-bin2hex ${DISTDIR}/End_Point.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} -a  -omf=elf   -mdfp="${DFP_DIR}/xc16" 
	
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

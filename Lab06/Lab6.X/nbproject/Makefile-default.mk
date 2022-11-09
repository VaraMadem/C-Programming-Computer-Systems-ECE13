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
FINAL_IMAGE=${DISTDIR}/Lab6.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/Lab6.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS

else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=../Lab6/Ascii.c ../Lab6/BOARD.c ../Lab6/bounce_adc.c ../Lab6/bounce_buttons.c ../Lab6/bounce_ec.c ../Lab6/bounce_switch.c ../Lab6/bounce_timers.c ../Lab6/ButtonsTest.c ../Lab6/Oled.c ../Lab6/OledDriver.c Leds_Lab06.c Buttons.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/761796776/Ascii.o ${OBJECTDIR}/_ext/761796776/BOARD.o ${OBJECTDIR}/_ext/761796776/bounce_adc.o ${OBJECTDIR}/_ext/761796776/bounce_buttons.o ${OBJECTDIR}/_ext/761796776/bounce_ec.o ${OBJECTDIR}/_ext/761796776/bounce_switch.o ${OBJECTDIR}/_ext/761796776/bounce_timers.o ${OBJECTDIR}/_ext/761796776/ButtonsTest.o ${OBJECTDIR}/_ext/761796776/Oled.o ${OBJECTDIR}/_ext/761796776/OledDriver.o ${OBJECTDIR}/Leds_Lab06.o ${OBJECTDIR}/Buttons.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/761796776/Ascii.o.d ${OBJECTDIR}/_ext/761796776/BOARD.o.d ${OBJECTDIR}/_ext/761796776/bounce_adc.o.d ${OBJECTDIR}/_ext/761796776/bounce_buttons.o.d ${OBJECTDIR}/_ext/761796776/bounce_ec.o.d ${OBJECTDIR}/_ext/761796776/bounce_switch.o.d ${OBJECTDIR}/_ext/761796776/bounce_timers.o.d ${OBJECTDIR}/_ext/761796776/ButtonsTest.o.d ${OBJECTDIR}/_ext/761796776/Oled.o.d ${OBJECTDIR}/_ext/761796776/OledDriver.o.d ${OBJECTDIR}/Leds_Lab06.o.d ${OBJECTDIR}/Buttons.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/761796776/Ascii.o ${OBJECTDIR}/_ext/761796776/BOARD.o ${OBJECTDIR}/_ext/761796776/bounce_adc.o ${OBJECTDIR}/_ext/761796776/bounce_buttons.o ${OBJECTDIR}/_ext/761796776/bounce_ec.o ${OBJECTDIR}/_ext/761796776/bounce_switch.o ${OBJECTDIR}/_ext/761796776/bounce_timers.o ${OBJECTDIR}/_ext/761796776/ButtonsTest.o ${OBJECTDIR}/_ext/761796776/Oled.o ${OBJECTDIR}/_ext/761796776/OledDriver.o ${OBJECTDIR}/Leds_Lab06.o ${OBJECTDIR}/Buttons.o

# Source Files
SOURCEFILES=../Lab6/Ascii.c ../Lab6/BOARD.c ../Lab6/bounce_adc.c ../Lab6/bounce_buttons.c ../Lab6/bounce_ec.c ../Lab6/bounce_switch.c ../Lab6/bounce_timers.c ../Lab6/ButtonsTest.c ../Lab6/Oled.c ../Lab6/OledDriver.c Leds_Lab06.c Buttons.c



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
	${MAKE}  -f nbproject/Makefile-default.mk ${DISTDIR}/Lab6.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=MEC1404
MP_LINKER_FILE_OPTION=
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/761796776/Ascii.o: ../Lab6/Ascii.c  .generated_files/flags/default/280f0bb119b94a86bdc1a7edf3c3a9e388596037 .generated_files/flags/default/ee154c44cb8495586b47662737c436268b9b0954
	@${MKDIR} "${OBJECTDIR}/_ext/761796776" 
	@${RM} ${OBJECTDIR}/_ext/761796776/Ascii.o.d 
	@${RM} ${OBJECTDIR}/_ext/761796776/Ascii.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/761796776/Ascii.o.d" -o ${OBJECTDIR}/_ext/761796776/Ascii.o ../Lab6/Ascii.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/761796776/BOARD.o: ../Lab6/BOARD.c  .generated_files/flags/default/3a00c9f4a43a90ffe66fd8b839b8c0f81ab17be4 .generated_files/flags/default/ee154c44cb8495586b47662737c436268b9b0954
	@${MKDIR} "${OBJECTDIR}/_ext/761796776" 
	@${RM} ${OBJECTDIR}/_ext/761796776/BOARD.o.d 
	@${RM} ${OBJECTDIR}/_ext/761796776/BOARD.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/761796776/BOARD.o.d" -o ${OBJECTDIR}/_ext/761796776/BOARD.o ../Lab6/BOARD.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/761796776/bounce_adc.o: ../Lab6/bounce_adc.c  .generated_files/flags/default/85b901326aad2f90ee6665daecb59f35ee1923ba .generated_files/flags/default/ee154c44cb8495586b47662737c436268b9b0954
	@${MKDIR} "${OBJECTDIR}/_ext/761796776" 
	@${RM} ${OBJECTDIR}/_ext/761796776/bounce_adc.o.d 
	@${RM} ${OBJECTDIR}/_ext/761796776/bounce_adc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/761796776/bounce_adc.o.d" -o ${OBJECTDIR}/_ext/761796776/bounce_adc.o ../Lab6/bounce_adc.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/761796776/bounce_buttons.o: ../Lab6/bounce_buttons.c  .generated_files/flags/default/150d02ae646bdae11f61e613dad69a257c75ab03 .generated_files/flags/default/ee154c44cb8495586b47662737c436268b9b0954
	@${MKDIR} "${OBJECTDIR}/_ext/761796776" 
	@${RM} ${OBJECTDIR}/_ext/761796776/bounce_buttons.o.d 
	@${RM} ${OBJECTDIR}/_ext/761796776/bounce_buttons.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/761796776/bounce_buttons.o.d" -o ${OBJECTDIR}/_ext/761796776/bounce_buttons.o ../Lab6/bounce_buttons.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/761796776/bounce_ec.o: ../Lab6/bounce_ec.c  .generated_files/flags/default/137714f0c5d22fe5b6440c8892a3359d138eb6db .generated_files/flags/default/ee154c44cb8495586b47662737c436268b9b0954
	@${MKDIR} "${OBJECTDIR}/_ext/761796776" 
	@${RM} ${OBJECTDIR}/_ext/761796776/bounce_ec.o.d 
	@${RM} ${OBJECTDIR}/_ext/761796776/bounce_ec.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/761796776/bounce_ec.o.d" -o ${OBJECTDIR}/_ext/761796776/bounce_ec.o ../Lab6/bounce_ec.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/761796776/bounce_switch.o: ../Lab6/bounce_switch.c  .generated_files/flags/default/23eaa56cf049eb8ede3a46d58ba756f6989802da .generated_files/flags/default/ee154c44cb8495586b47662737c436268b9b0954
	@${MKDIR} "${OBJECTDIR}/_ext/761796776" 
	@${RM} ${OBJECTDIR}/_ext/761796776/bounce_switch.o.d 
	@${RM} ${OBJECTDIR}/_ext/761796776/bounce_switch.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/761796776/bounce_switch.o.d" -o ${OBJECTDIR}/_ext/761796776/bounce_switch.o ../Lab6/bounce_switch.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/761796776/bounce_timers.o: ../Lab6/bounce_timers.c  .generated_files/flags/default/d083cf28ca1461931e60677b449f785f96de1017 .generated_files/flags/default/ee154c44cb8495586b47662737c436268b9b0954
	@${MKDIR} "${OBJECTDIR}/_ext/761796776" 
	@${RM} ${OBJECTDIR}/_ext/761796776/bounce_timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/761796776/bounce_timers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/761796776/bounce_timers.o.d" -o ${OBJECTDIR}/_ext/761796776/bounce_timers.o ../Lab6/bounce_timers.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/761796776/ButtonsTest.o: ../Lab6/ButtonsTest.c  .generated_files/flags/default/8587577c201fe7d9ead5e916113806e09fc0c7e4 .generated_files/flags/default/ee154c44cb8495586b47662737c436268b9b0954
	@${MKDIR} "${OBJECTDIR}/_ext/761796776" 
	@${RM} ${OBJECTDIR}/_ext/761796776/ButtonsTest.o.d 
	@${RM} ${OBJECTDIR}/_ext/761796776/ButtonsTest.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/761796776/ButtonsTest.o.d" -o ${OBJECTDIR}/_ext/761796776/ButtonsTest.o ../Lab6/ButtonsTest.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/761796776/Oled.o: ../Lab6/Oled.c  .generated_files/flags/default/6565a735ddc295ef9b7a510e6eafdef3f0034435 .generated_files/flags/default/ee154c44cb8495586b47662737c436268b9b0954
	@${MKDIR} "${OBJECTDIR}/_ext/761796776" 
	@${RM} ${OBJECTDIR}/_ext/761796776/Oled.o.d 
	@${RM} ${OBJECTDIR}/_ext/761796776/Oled.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/761796776/Oled.o.d" -o ${OBJECTDIR}/_ext/761796776/Oled.o ../Lab6/Oled.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/761796776/OledDriver.o: ../Lab6/OledDriver.c  .generated_files/flags/default/15f7311857e0e74e34eb752544746a96a13cc3ba .generated_files/flags/default/ee154c44cb8495586b47662737c436268b9b0954
	@${MKDIR} "${OBJECTDIR}/_ext/761796776" 
	@${RM} ${OBJECTDIR}/_ext/761796776/OledDriver.o.d 
	@${RM} ${OBJECTDIR}/_ext/761796776/OledDriver.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/761796776/OledDriver.o.d" -o ${OBJECTDIR}/_ext/761796776/OledDriver.o ../Lab6/OledDriver.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/Leds_Lab06.o: Leds_Lab06.c  .generated_files/flags/default/af4b95cae1b7a937771f927350e4febae9a3a1a1 .generated_files/flags/default/ee154c44cb8495586b47662737c436268b9b0954
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Leds_Lab06.o.d 
	@${RM} ${OBJECTDIR}/Leds_Lab06.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -Wall -MP -MMD -MF "${OBJECTDIR}/Leds_Lab06.o.d" -o ${OBJECTDIR}/Leds_Lab06.o Leds_Lab06.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/Buttons.o: Buttons.c  .generated_files/flags/default/eb0ae1065bc8285813fd3447589f39df72a9a3a8 .generated_files/flags/default/ee154c44cb8495586b47662737c436268b9b0954
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Buttons.o.d 
	@${RM} ${OBJECTDIR}/Buttons.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -Wall -MP -MMD -MF "${OBJECTDIR}/Buttons.o.d" -o ${OBJECTDIR}/Buttons.o Buttons.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
else
${OBJECTDIR}/_ext/761796776/Ascii.o: ../Lab6/Ascii.c  .generated_files/flags/default/69f3c2f96b998b0124a30937473923168fbcb755 .generated_files/flags/default/ee154c44cb8495586b47662737c436268b9b0954
	@${MKDIR} "${OBJECTDIR}/_ext/761796776" 
	@${RM} ${OBJECTDIR}/_ext/761796776/Ascii.o.d 
	@${RM} ${OBJECTDIR}/_ext/761796776/Ascii.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/761796776/Ascii.o.d" -o ${OBJECTDIR}/_ext/761796776/Ascii.o ../Lab6/Ascii.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/761796776/BOARD.o: ../Lab6/BOARD.c  .generated_files/flags/default/518523c3857ac412a6ca5fba7650d4df53f620fc .generated_files/flags/default/ee154c44cb8495586b47662737c436268b9b0954
	@${MKDIR} "${OBJECTDIR}/_ext/761796776" 
	@${RM} ${OBJECTDIR}/_ext/761796776/BOARD.o.d 
	@${RM} ${OBJECTDIR}/_ext/761796776/BOARD.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/761796776/BOARD.o.d" -o ${OBJECTDIR}/_ext/761796776/BOARD.o ../Lab6/BOARD.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/761796776/bounce_adc.o: ../Lab6/bounce_adc.c  .generated_files/flags/default/9879ddfbc6cd65ad33fa2b546b8429b0947c4c36 .generated_files/flags/default/ee154c44cb8495586b47662737c436268b9b0954
	@${MKDIR} "${OBJECTDIR}/_ext/761796776" 
	@${RM} ${OBJECTDIR}/_ext/761796776/bounce_adc.o.d 
	@${RM} ${OBJECTDIR}/_ext/761796776/bounce_adc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/761796776/bounce_adc.o.d" -o ${OBJECTDIR}/_ext/761796776/bounce_adc.o ../Lab6/bounce_adc.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/761796776/bounce_buttons.o: ../Lab6/bounce_buttons.c  .generated_files/flags/default/3cacbab503599c6d9a9afef912f844c2759a4c1f .generated_files/flags/default/ee154c44cb8495586b47662737c436268b9b0954
	@${MKDIR} "${OBJECTDIR}/_ext/761796776" 
	@${RM} ${OBJECTDIR}/_ext/761796776/bounce_buttons.o.d 
	@${RM} ${OBJECTDIR}/_ext/761796776/bounce_buttons.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/761796776/bounce_buttons.o.d" -o ${OBJECTDIR}/_ext/761796776/bounce_buttons.o ../Lab6/bounce_buttons.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/761796776/bounce_ec.o: ../Lab6/bounce_ec.c  .generated_files/flags/default/f592bc8e3f50f89d9161ed809adad95d84989049 .generated_files/flags/default/ee154c44cb8495586b47662737c436268b9b0954
	@${MKDIR} "${OBJECTDIR}/_ext/761796776" 
	@${RM} ${OBJECTDIR}/_ext/761796776/bounce_ec.o.d 
	@${RM} ${OBJECTDIR}/_ext/761796776/bounce_ec.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/761796776/bounce_ec.o.d" -o ${OBJECTDIR}/_ext/761796776/bounce_ec.o ../Lab6/bounce_ec.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/761796776/bounce_switch.o: ../Lab6/bounce_switch.c  .generated_files/flags/default/97aaee319b0a9aa93eb0ef7836597a93b7b24116 .generated_files/flags/default/ee154c44cb8495586b47662737c436268b9b0954
	@${MKDIR} "${OBJECTDIR}/_ext/761796776" 
	@${RM} ${OBJECTDIR}/_ext/761796776/bounce_switch.o.d 
	@${RM} ${OBJECTDIR}/_ext/761796776/bounce_switch.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/761796776/bounce_switch.o.d" -o ${OBJECTDIR}/_ext/761796776/bounce_switch.o ../Lab6/bounce_switch.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/761796776/bounce_timers.o: ../Lab6/bounce_timers.c  .generated_files/flags/default/c3e7461ae116faa4a1fe2e9b626b305e9228c5f0 .generated_files/flags/default/ee154c44cb8495586b47662737c436268b9b0954
	@${MKDIR} "${OBJECTDIR}/_ext/761796776" 
	@${RM} ${OBJECTDIR}/_ext/761796776/bounce_timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/761796776/bounce_timers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/761796776/bounce_timers.o.d" -o ${OBJECTDIR}/_ext/761796776/bounce_timers.o ../Lab6/bounce_timers.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/761796776/ButtonsTest.o: ../Lab6/ButtonsTest.c  .generated_files/flags/default/60d81e596f0dc19471658d5dce095c24166c72dc .generated_files/flags/default/ee154c44cb8495586b47662737c436268b9b0954
	@${MKDIR} "${OBJECTDIR}/_ext/761796776" 
	@${RM} ${OBJECTDIR}/_ext/761796776/ButtonsTest.o.d 
	@${RM} ${OBJECTDIR}/_ext/761796776/ButtonsTest.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/761796776/ButtonsTest.o.d" -o ${OBJECTDIR}/_ext/761796776/ButtonsTest.o ../Lab6/ButtonsTest.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/761796776/Oled.o: ../Lab6/Oled.c  .generated_files/flags/default/e0deb5e6e66f238e49ff62374e618468ea2271b0 .generated_files/flags/default/ee154c44cb8495586b47662737c436268b9b0954
	@${MKDIR} "${OBJECTDIR}/_ext/761796776" 
	@${RM} ${OBJECTDIR}/_ext/761796776/Oled.o.d 
	@${RM} ${OBJECTDIR}/_ext/761796776/Oled.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/761796776/Oled.o.d" -o ${OBJECTDIR}/_ext/761796776/Oled.o ../Lab6/Oled.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/761796776/OledDriver.o: ../Lab6/OledDriver.c  .generated_files/flags/default/a1d28e108476c64283d627956ad8a78071644ad9 .generated_files/flags/default/ee154c44cb8495586b47662737c436268b9b0954
	@${MKDIR} "${OBJECTDIR}/_ext/761796776" 
	@${RM} ${OBJECTDIR}/_ext/761796776/OledDriver.o.d 
	@${RM} ${OBJECTDIR}/_ext/761796776/OledDriver.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -Wall -MP -MMD -MF "${OBJECTDIR}/_ext/761796776/OledDriver.o.d" -o ${OBJECTDIR}/_ext/761796776/OledDriver.o ../Lab6/OledDriver.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/Leds_Lab06.o: Leds_Lab06.c  .generated_files/flags/default/7b14e51413eb2f18511910c8ac526bdde274d325 .generated_files/flags/default/ee154c44cb8495586b47662737c436268b9b0954
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Leds_Lab06.o.d 
	@${RM} ${OBJECTDIR}/Leds_Lab06.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -Wall -MP -MMD -MF "${OBJECTDIR}/Leds_Lab06.o.d" -o ${OBJECTDIR}/Leds_Lab06.o Leds_Lab06.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/Buttons.o: Buttons.c  .generated_files/flags/default/ff946ba0ccecf7115d9d19696567a63104b6cf2b .generated_files/flags/default/ee154c44cb8495586b47662737c436268b9b0954
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Buttons.o.d 
	@${RM} ${OBJECTDIR}/Buttons.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -Wall -MP -MMD -MF "${OBJECTDIR}/Buttons.o.d" -o ${OBJECTDIR}/Buttons.o Buttons.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/Lab6.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g   -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${DISTDIR}/Lab6.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)      -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=_min_heap_size=512,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}"
	
else
${DISTDIR}/Lab6.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${DISTDIR}/Lab6.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=512,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}"
	${MP_CC_DIR}/xc32-bin2hex ${DISTDIR}/Lab6.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
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

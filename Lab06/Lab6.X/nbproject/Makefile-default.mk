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
SOURCEFILES_QUOTED_IF_SPACED=Leds_Lab06.c Buttons.c Ascii.c BOARD.c OledDriver.c Oled.c ButtonsTest.c bounce_timers.c bounce_switch.c bounce_ec.c bounce_buttons.c bounce_adc.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/Leds_Lab06.o ${OBJECTDIR}/Buttons.o ${OBJECTDIR}/Ascii.o ${OBJECTDIR}/BOARD.o ${OBJECTDIR}/OledDriver.o ${OBJECTDIR}/Oled.o ${OBJECTDIR}/ButtonsTest.o ${OBJECTDIR}/bounce_timers.o ${OBJECTDIR}/bounce_switch.o ${OBJECTDIR}/bounce_ec.o ${OBJECTDIR}/bounce_buttons.o ${OBJECTDIR}/bounce_adc.o
POSSIBLE_DEPFILES=${OBJECTDIR}/Leds_Lab06.o.d ${OBJECTDIR}/Buttons.o.d ${OBJECTDIR}/Ascii.o.d ${OBJECTDIR}/BOARD.o.d ${OBJECTDIR}/OledDriver.o.d ${OBJECTDIR}/Oled.o.d ${OBJECTDIR}/ButtonsTest.o.d ${OBJECTDIR}/bounce_timers.o.d ${OBJECTDIR}/bounce_switch.o.d ${OBJECTDIR}/bounce_ec.o.d ${OBJECTDIR}/bounce_buttons.o.d ${OBJECTDIR}/bounce_adc.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/Leds_Lab06.o ${OBJECTDIR}/Buttons.o ${OBJECTDIR}/Ascii.o ${OBJECTDIR}/BOARD.o ${OBJECTDIR}/OledDriver.o ${OBJECTDIR}/Oled.o ${OBJECTDIR}/ButtonsTest.o ${OBJECTDIR}/bounce_timers.o ${OBJECTDIR}/bounce_switch.o ${OBJECTDIR}/bounce_ec.o ${OBJECTDIR}/bounce_buttons.o ${OBJECTDIR}/bounce_adc.o

# Source Files
SOURCEFILES=Leds_Lab06.c Buttons.c Ascii.c BOARD.c OledDriver.c Oled.c ButtonsTest.c bounce_timers.c bounce_switch.c bounce_ec.c bounce_buttons.c bounce_adc.c



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
	
${OBJECTDIR}/Ascii.o: Ascii.c  .generated_files/flags/default/4cd307dcc859c103083acb030bd802d6f3d8a812 .generated_files/flags/default/ee154c44cb8495586b47662737c436268b9b0954
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Ascii.o.d 
	@${RM} ${OBJECTDIR}/Ascii.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -Wall -MP -MMD -MF "${OBJECTDIR}/Ascii.o.d" -o ${OBJECTDIR}/Ascii.o Ascii.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/BOARD.o: BOARD.c  .generated_files/flags/default/ae96640d19dc31f17bfc06ea027a3b27af6e9eef .generated_files/flags/default/ee154c44cb8495586b47662737c436268b9b0954
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/BOARD.o.d 
	@${RM} ${OBJECTDIR}/BOARD.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -Wall -MP -MMD -MF "${OBJECTDIR}/BOARD.o.d" -o ${OBJECTDIR}/BOARD.o BOARD.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/OledDriver.o: OledDriver.c  .generated_files/flags/default/ef83bc5b2b81c461aaf171a2ba279dd75bc15d4b .generated_files/flags/default/ee154c44cb8495586b47662737c436268b9b0954
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/OledDriver.o.d 
	@${RM} ${OBJECTDIR}/OledDriver.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -Wall -MP -MMD -MF "${OBJECTDIR}/OledDriver.o.d" -o ${OBJECTDIR}/OledDriver.o OledDriver.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/Oled.o: Oled.c  .generated_files/flags/default/c774d599773481772d7fea40fe1193c59adefa2b .generated_files/flags/default/ee154c44cb8495586b47662737c436268b9b0954
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Oled.o.d 
	@${RM} ${OBJECTDIR}/Oled.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -Wall -MP -MMD -MF "${OBJECTDIR}/Oled.o.d" -o ${OBJECTDIR}/Oled.o Oled.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/ButtonsTest.o: ButtonsTest.c  .generated_files/flags/default/beff6fb9f1d6e4ccb1d72d75a459ce0fbf72be1b .generated_files/flags/default/ee154c44cb8495586b47662737c436268b9b0954
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/ButtonsTest.o.d 
	@${RM} ${OBJECTDIR}/ButtonsTest.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -Wall -MP -MMD -MF "${OBJECTDIR}/ButtonsTest.o.d" -o ${OBJECTDIR}/ButtonsTest.o ButtonsTest.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/bounce_timers.o: bounce_timers.c  .generated_files/flags/default/882e0480e717c2072a4420d821e0218b0d0fd0af .generated_files/flags/default/ee154c44cb8495586b47662737c436268b9b0954
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/bounce_timers.o.d 
	@${RM} ${OBJECTDIR}/bounce_timers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -Wall -MP -MMD -MF "${OBJECTDIR}/bounce_timers.o.d" -o ${OBJECTDIR}/bounce_timers.o bounce_timers.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/bounce_switch.o: bounce_switch.c  .generated_files/flags/default/4ac8ef32bd91e3abaa3b346d27ad8fe1a16bc634 .generated_files/flags/default/ee154c44cb8495586b47662737c436268b9b0954
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/bounce_switch.o.d 
	@${RM} ${OBJECTDIR}/bounce_switch.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -Wall -MP -MMD -MF "${OBJECTDIR}/bounce_switch.o.d" -o ${OBJECTDIR}/bounce_switch.o bounce_switch.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/bounce_ec.o: bounce_ec.c  .generated_files/flags/default/282cad6c76ff0218749f5d1f78282d923c745865 .generated_files/flags/default/ee154c44cb8495586b47662737c436268b9b0954
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/bounce_ec.o.d 
	@${RM} ${OBJECTDIR}/bounce_ec.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -Wall -MP -MMD -MF "${OBJECTDIR}/bounce_ec.o.d" -o ${OBJECTDIR}/bounce_ec.o bounce_ec.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/bounce_buttons.o: bounce_buttons.c  .generated_files/flags/default/5d91db5ad67df8848e56349a1a1fcdf982091a1d .generated_files/flags/default/ee154c44cb8495586b47662737c436268b9b0954
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/bounce_buttons.o.d 
	@${RM} ${OBJECTDIR}/bounce_buttons.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -Wall -MP -MMD -MF "${OBJECTDIR}/bounce_buttons.o.d" -o ${OBJECTDIR}/bounce_buttons.o bounce_buttons.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/bounce_adc.o: bounce_adc.c  .generated_files/flags/default/5e86dfee2af279909b5971a1d44fbb4f468696c2 .generated_files/flags/default/ee154c44cb8495586b47662737c436268b9b0954
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/bounce_adc.o.d 
	@${RM} ${OBJECTDIR}/bounce_adc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -Wall -MP -MMD -MF "${OBJECTDIR}/bounce_adc.o.d" -o ${OBJECTDIR}/bounce_adc.o bounce_adc.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
else
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
	
${OBJECTDIR}/Ascii.o: Ascii.c  .generated_files/flags/default/39c3d03997bebd8e4dc7d444b2eee9e42df8249 .generated_files/flags/default/ee154c44cb8495586b47662737c436268b9b0954
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Ascii.o.d 
	@${RM} ${OBJECTDIR}/Ascii.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -Wall -MP -MMD -MF "${OBJECTDIR}/Ascii.o.d" -o ${OBJECTDIR}/Ascii.o Ascii.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/BOARD.o: BOARD.c  .generated_files/flags/default/76892a08b98bbbe7a3db07f6c6064264748dab00 .generated_files/flags/default/ee154c44cb8495586b47662737c436268b9b0954
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/BOARD.o.d 
	@${RM} ${OBJECTDIR}/BOARD.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -Wall -MP -MMD -MF "${OBJECTDIR}/BOARD.o.d" -o ${OBJECTDIR}/BOARD.o BOARD.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/OledDriver.o: OledDriver.c  .generated_files/flags/default/3585426e09b866bb94f63dd45c27f102b52c80a2 .generated_files/flags/default/ee154c44cb8495586b47662737c436268b9b0954
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/OledDriver.o.d 
	@${RM} ${OBJECTDIR}/OledDriver.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -Wall -MP -MMD -MF "${OBJECTDIR}/OledDriver.o.d" -o ${OBJECTDIR}/OledDriver.o OledDriver.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/Oled.o: Oled.c  .generated_files/flags/default/1b3e4e9c020401c99e623bf1ea9aaee7fa00cb4a .generated_files/flags/default/ee154c44cb8495586b47662737c436268b9b0954
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Oled.o.d 
	@${RM} ${OBJECTDIR}/Oled.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -Wall -MP -MMD -MF "${OBJECTDIR}/Oled.o.d" -o ${OBJECTDIR}/Oled.o Oled.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/ButtonsTest.o: ButtonsTest.c  .generated_files/flags/default/546e3b0054cc9efacdb50c174f98835ba8cf7947 .generated_files/flags/default/ee154c44cb8495586b47662737c436268b9b0954
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/ButtonsTest.o.d 
	@${RM} ${OBJECTDIR}/ButtonsTest.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -Wall -MP -MMD -MF "${OBJECTDIR}/ButtonsTest.o.d" -o ${OBJECTDIR}/ButtonsTest.o ButtonsTest.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/bounce_timers.o: bounce_timers.c  .generated_files/flags/default/9cd831b98b8b1def289bbec07de94e3aa44cd55c .generated_files/flags/default/ee154c44cb8495586b47662737c436268b9b0954
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/bounce_timers.o.d 
	@${RM} ${OBJECTDIR}/bounce_timers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -Wall -MP -MMD -MF "${OBJECTDIR}/bounce_timers.o.d" -o ${OBJECTDIR}/bounce_timers.o bounce_timers.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/bounce_switch.o: bounce_switch.c  .generated_files/flags/default/6e38b398c20e5558d3a55b4dc799f80248b0880 .generated_files/flags/default/ee154c44cb8495586b47662737c436268b9b0954
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/bounce_switch.o.d 
	@${RM} ${OBJECTDIR}/bounce_switch.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -Wall -MP -MMD -MF "${OBJECTDIR}/bounce_switch.o.d" -o ${OBJECTDIR}/bounce_switch.o bounce_switch.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/bounce_ec.o: bounce_ec.c  .generated_files/flags/default/bbbf99e7df6b3b52d529e01ecf2eb5f76e9d08ff .generated_files/flags/default/ee154c44cb8495586b47662737c436268b9b0954
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/bounce_ec.o.d 
	@${RM} ${OBJECTDIR}/bounce_ec.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -Wall -MP -MMD -MF "${OBJECTDIR}/bounce_ec.o.d" -o ${OBJECTDIR}/bounce_ec.o bounce_ec.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/bounce_buttons.o: bounce_buttons.c  .generated_files/flags/default/bdf4c8e81e8bcf63e69d224d414528646fb23610 .generated_files/flags/default/ee154c44cb8495586b47662737c436268b9b0954
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/bounce_buttons.o.d 
	@${RM} ${OBJECTDIR}/bounce_buttons.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -Wall -MP -MMD -MF "${OBJECTDIR}/bounce_buttons.o.d" -o ${OBJECTDIR}/bounce_buttons.o bounce_buttons.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/bounce_adc.o: bounce_adc.c  .generated_files/flags/default/3ec9e8ab5f02ade2222751ceb82b0b43a7d4fb5d .generated_files/flags/default/ee154c44cb8495586b47662737c436268b9b0954
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/bounce_adc.o.d 
	@${RM} ${OBJECTDIR}/bounce_adc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -Wall -MP -MMD -MF "${OBJECTDIR}/bounce_adc.o.d" -o ${OBJECTDIR}/bounce_adc.o bounce_adc.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
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

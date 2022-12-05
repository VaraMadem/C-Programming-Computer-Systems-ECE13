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
FINAL_IMAGE=${DISTDIR}/Lab9.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/Lab9.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
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
SOURCEFILES_QUOTED_IF_SPACED=Ascii.c BOARD.c CircularBuffer.c FieldOled.c Lab09_main.c Oled.c OledDriver.c Uart1.c AgentTest.c MessageTest.c NegotiationTest.c FieldTest.c Agent.c Message.c Negotiation.c Field.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/Ascii.o ${OBJECTDIR}/BOARD.o ${OBJECTDIR}/CircularBuffer.o ${OBJECTDIR}/FieldOled.o ${OBJECTDIR}/Lab09_main.o ${OBJECTDIR}/Oled.o ${OBJECTDIR}/OledDriver.o ${OBJECTDIR}/Uart1.o ${OBJECTDIR}/AgentTest.o ${OBJECTDIR}/MessageTest.o ${OBJECTDIR}/NegotiationTest.o ${OBJECTDIR}/FieldTest.o ${OBJECTDIR}/Agent.o ${OBJECTDIR}/Message.o ${OBJECTDIR}/Negotiation.o ${OBJECTDIR}/Field.o
POSSIBLE_DEPFILES=${OBJECTDIR}/Ascii.o.d ${OBJECTDIR}/BOARD.o.d ${OBJECTDIR}/CircularBuffer.o.d ${OBJECTDIR}/FieldOled.o.d ${OBJECTDIR}/Lab09_main.o.d ${OBJECTDIR}/Oled.o.d ${OBJECTDIR}/OledDriver.o.d ${OBJECTDIR}/Uart1.o.d ${OBJECTDIR}/AgentTest.o.d ${OBJECTDIR}/MessageTest.o.d ${OBJECTDIR}/NegotiationTest.o.d ${OBJECTDIR}/FieldTest.o.d ${OBJECTDIR}/Agent.o.d ${OBJECTDIR}/Message.o.d ${OBJECTDIR}/Negotiation.o.d ${OBJECTDIR}/Field.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/Ascii.o ${OBJECTDIR}/BOARD.o ${OBJECTDIR}/CircularBuffer.o ${OBJECTDIR}/FieldOled.o ${OBJECTDIR}/Lab09_main.o ${OBJECTDIR}/Oled.o ${OBJECTDIR}/OledDriver.o ${OBJECTDIR}/Uart1.o ${OBJECTDIR}/AgentTest.o ${OBJECTDIR}/MessageTest.o ${OBJECTDIR}/NegotiationTest.o ${OBJECTDIR}/FieldTest.o ${OBJECTDIR}/Agent.o ${OBJECTDIR}/Message.o ${OBJECTDIR}/Negotiation.o ${OBJECTDIR}/Field.o

# Source Files
SOURCEFILES=Ascii.c BOARD.c CircularBuffer.c FieldOled.c Lab09_main.c Oled.c OledDriver.c Uart1.c AgentTest.c MessageTest.c NegotiationTest.c FieldTest.c Agent.c Message.c Negotiation.c Field.c



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
	${MAKE}  -f nbproject/Makefile-default.mk ${DISTDIR}/Lab9.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=32MX340F512H
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
${OBJECTDIR}/Ascii.o: Ascii.c  .generated_files/flags/default/7542eea06c612f1a7472ba17d30987dc1c646f5a .generated_files/flags/default/fb83cc48fb9a4ca6d8dc33bb7f54ecec63c0816e
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Ascii.o.d 
	@${RM} ${OBJECTDIR}/Ascii.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -MP -MMD -MF "${OBJECTDIR}/Ascii.o.d" -o ${OBJECTDIR}/Ascii.o Ascii.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/BOARD.o: BOARD.c  .generated_files/flags/default/ab5cd28002cdd872f7aa19dc359cf8e5d0a02a19 .generated_files/flags/default/fb83cc48fb9a4ca6d8dc33bb7f54ecec63c0816e
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/BOARD.o.d 
	@${RM} ${OBJECTDIR}/BOARD.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -MP -MMD -MF "${OBJECTDIR}/BOARD.o.d" -o ${OBJECTDIR}/BOARD.o BOARD.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/CircularBuffer.o: CircularBuffer.c  .generated_files/flags/default/76024f173e51b60e84b1c7dd1fef4a27e8f3b139 .generated_files/flags/default/fb83cc48fb9a4ca6d8dc33bb7f54ecec63c0816e
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/CircularBuffer.o.d 
	@${RM} ${OBJECTDIR}/CircularBuffer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -MP -MMD -MF "${OBJECTDIR}/CircularBuffer.o.d" -o ${OBJECTDIR}/CircularBuffer.o CircularBuffer.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/FieldOled.o: FieldOled.c  .generated_files/flags/default/a58fcbb47617ee96ce34a3ac211edcf0f758e7ef .generated_files/flags/default/fb83cc48fb9a4ca6d8dc33bb7f54ecec63c0816e
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/FieldOled.o.d 
	@${RM} ${OBJECTDIR}/FieldOled.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -MP -MMD -MF "${OBJECTDIR}/FieldOled.o.d" -o ${OBJECTDIR}/FieldOled.o FieldOled.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/Lab09_main.o: Lab09_main.c  .generated_files/flags/default/2a84ef8627d26a15528781bbc45b2761b9a39b99 .generated_files/flags/default/fb83cc48fb9a4ca6d8dc33bb7f54ecec63c0816e
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Lab09_main.o.d 
	@${RM} ${OBJECTDIR}/Lab09_main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -MP -MMD -MF "${OBJECTDIR}/Lab09_main.o.d" -o ${OBJECTDIR}/Lab09_main.o Lab09_main.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/Oled.o: Oled.c  .generated_files/flags/default/c7b809278a71d64816d0fa60a961c35189df0eea .generated_files/flags/default/fb83cc48fb9a4ca6d8dc33bb7f54ecec63c0816e
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Oled.o.d 
	@${RM} ${OBJECTDIR}/Oled.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -MP -MMD -MF "${OBJECTDIR}/Oled.o.d" -o ${OBJECTDIR}/Oled.o Oled.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/OledDriver.o: OledDriver.c  .generated_files/flags/default/fd5bd67d270993194e9996880b71d36cbb57c03 .generated_files/flags/default/fb83cc48fb9a4ca6d8dc33bb7f54ecec63c0816e
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/OledDriver.o.d 
	@${RM} ${OBJECTDIR}/OledDriver.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -MP -MMD -MF "${OBJECTDIR}/OledDriver.o.d" -o ${OBJECTDIR}/OledDriver.o OledDriver.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/Uart1.o: Uart1.c  .generated_files/flags/default/ddb5979ffe1bbbfb1f7d2997b759a6e66b6b90b5 .generated_files/flags/default/fb83cc48fb9a4ca6d8dc33bb7f54ecec63c0816e
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Uart1.o.d 
	@${RM} ${OBJECTDIR}/Uart1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -MP -MMD -MF "${OBJECTDIR}/Uart1.o.d" -o ${OBJECTDIR}/Uart1.o Uart1.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/AgentTest.o: AgentTest.c  .generated_files/flags/default/70823d12685226b54dd70c2085410c1ee6ec37a6 .generated_files/flags/default/fb83cc48fb9a4ca6d8dc33bb7f54ecec63c0816e
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/AgentTest.o.d 
	@${RM} ${OBJECTDIR}/AgentTest.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -MP -MMD -MF "${OBJECTDIR}/AgentTest.o.d" -o ${OBJECTDIR}/AgentTest.o AgentTest.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/MessageTest.o: MessageTest.c  .generated_files/flags/default/9823f23a28cb576fab45f77b98b59d633e0e8db6 .generated_files/flags/default/fb83cc48fb9a4ca6d8dc33bb7f54ecec63c0816e
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/MessageTest.o.d 
	@${RM} ${OBJECTDIR}/MessageTest.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -MP -MMD -MF "${OBJECTDIR}/MessageTest.o.d" -o ${OBJECTDIR}/MessageTest.o MessageTest.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/NegotiationTest.o: NegotiationTest.c  .generated_files/flags/default/9d38650aa9c4179de96a9054df57142e64e01d36 .generated_files/flags/default/fb83cc48fb9a4ca6d8dc33bb7f54ecec63c0816e
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/NegotiationTest.o.d 
	@${RM} ${OBJECTDIR}/NegotiationTest.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -MP -MMD -MF "${OBJECTDIR}/NegotiationTest.o.d" -o ${OBJECTDIR}/NegotiationTest.o NegotiationTest.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/FieldTest.o: FieldTest.c  .generated_files/flags/default/265e7c406837486e06bab33e375d59847178e078 .generated_files/flags/default/fb83cc48fb9a4ca6d8dc33bb7f54ecec63c0816e
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/FieldTest.o.d 
	@${RM} ${OBJECTDIR}/FieldTest.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -MP -MMD -MF "${OBJECTDIR}/FieldTest.o.d" -o ${OBJECTDIR}/FieldTest.o FieldTest.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/Agent.o: Agent.c  .generated_files/flags/default/1e8a717d122d99a9cb62dc77012d7121c76deb85 .generated_files/flags/default/fb83cc48fb9a4ca6d8dc33bb7f54ecec63c0816e
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Agent.o.d 
	@${RM} ${OBJECTDIR}/Agent.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -MP -MMD -MF "${OBJECTDIR}/Agent.o.d" -o ${OBJECTDIR}/Agent.o Agent.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/Message.o: Message.c  .generated_files/flags/default/c4f4884017633d34f69fc77265544bf8e92102bc .generated_files/flags/default/fb83cc48fb9a4ca6d8dc33bb7f54ecec63c0816e
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Message.o.d 
	@${RM} ${OBJECTDIR}/Message.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -MP -MMD -MF "${OBJECTDIR}/Message.o.d" -o ${OBJECTDIR}/Message.o Message.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/Negotiation.o: Negotiation.c  .generated_files/flags/default/497db898c972ee099dc2ebdd3b6dbe1257333df4 .generated_files/flags/default/fb83cc48fb9a4ca6d8dc33bb7f54ecec63c0816e
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Negotiation.o.d 
	@${RM} ${OBJECTDIR}/Negotiation.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -MP -MMD -MF "${OBJECTDIR}/Negotiation.o.d" -o ${OBJECTDIR}/Negotiation.o Negotiation.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/Field.o: Field.c  .generated_files/flags/default/d29752396a3aee730fba95e76cf08b7f64bb9cbc .generated_files/flags/default/fb83cc48fb9a4ca6d8dc33bb7f54ecec63c0816e
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Field.o.d 
	@${RM} ${OBJECTDIR}/Field.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG -D__MPLAB_DEBUGGER_PK3=1  -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -MP -MMD -MF "${OBJECTDIR}/Field.o.d" -o ${OBJECTDIR}/Field.o Field.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
else
${OBJECTDIR}/Ascii.o: Ascii.c  .generated_files/flags/default/878c4a56dfbf44acde3e768fa5e11c5779351762 .generated_files/flags/default/fb83cc48fb9a4ca6d8dc33bb7f54ecec63c0816e
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Ascii.o.d 
	@${RM} ${OBJECTDIR}/Ascii.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -MP -MMD -MF "${OBJECTDIR}/Ascii.o.d" -o ${OBJECTDIR}/Ascii.o Ascii.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/BOARD.o: BOARD.c  .generated_files/flags/default/8ab30f36ab8a6350b5506e09a1876cd5a10af1d6 .generated_files/flags/default/fb83cc48fb9a4ca6d8dc33bb7f54ecec63c0816e
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/BOARD.o.d 
	@${RM} ${OBJECTDIR}/BOARD.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -MP -MMD -MF "${OBJECTDIR}/BOARD.o.d" -o ${OBJECTDIR}/BOARD.o BOARD.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/CircularBuffer.o: CircularBuffer.c  .generated_files/flags/default/46915e027a4abfa192020d07354179c4fee7db40 .generated_files/flags/default/fb83cc48fb9a4ca6d8dc33bb7f54ecec63c0816e
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/CircularBuffer.o.d 
	@${RM} ${OBJECTDIR}/CircularBuffer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -MP -MMD -MF "${OBJECTDIR}/CircularBuffer.o.d" -o ${OBJECTDIR}/CircularBuffer.o CircularBuffer.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/FieldOled.o: FieldOled.c  .generated_files/flags/default/3af765782d62a0397927f79edf28d3180e83d1ae .generated_files/flags/default/fb83cc48fb9a4ca6d8dc33bb7f54ecec63c0816e
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/FieldOled.o.d 
	@${RM} ${OBJECTDIR}/FieldOled.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -MP -MMD -MF "${OBJECTDIR}/FieldOled.o.d" -o ${OBJECTDIR}/FieldOled.o FieldOled.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/Lab09_main.o: Lab09_main.c  .generated_files/flags/default/313d525817fdc32342a1446b56c9a9206531991b .generated_files/flags/default/fb83cc48fb9a4ca6d8dc33bb7f54ecec63c0816e
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Lab09_main.o.d 
	@${RM} ${OBJECTDIR}/Lab09_main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -MP -MMD -MF "${OBJECTDIR}/Lab09_main.o.d" -o ${OBJECTDIR}/Lab09_main.o Lab09_main.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/Oled.o: Oled.c  .generated_files/flags/default/3604cadde69e2dcfa3480b0033eb5c31e284d75b .generated_files/flags/default/fb83cc48fb9a4ca6d8dc33bb7f54ecec63c0816e
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Oled.o.d 
	@${RM} ${OBJECTDIR}/Oled.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -MP -MMD -MF "${OBJECTDIR}/Oled.o.d" -o ${OBJECTDIR}/Oled.o Oled.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/OledDriver.o: OledDriver.c  .generated_files/flags/default/4d1c3c5a1537cb9cab537523baa767f318313f95 .generated_files/flags/default/fb83cc48fb9a4ca6d8dc33bb7f54ecec63c0816e
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/OledDriver.o.d 
	@${RM} ${OBJECTDIR}/OledDriver.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -MP -MMD -MF "${OBJECTDIR}/OledDriver.o.d" -o ${OBJECTDIR}/OledDriver.o OledDriver.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/Uart1.o: Uart1.c  .generated_files/flags/default/2c7ef486e9ed633322bd46daf767157c1053abb0 .generated_files/flags/default/fb83cc48fb9a4ca6d8dc33bb7f54ecec63c0816e
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Uart1.o.d 
	@${RM} ${OBJECTDIR}/Uart1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -MP -MMD -MF "${OBJECTDIR}/Uart1.o.d" -o ${OBJECTDIR}/Uart1.o Uart1.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/AgentTest.o: AgentTest.c  .generated_files/flags/default/2f53f270ca52bf5166d17d0b4cb8fa7362ff887b .generated_files/flags/default/fb83cc48fb9a4ca6d8dc33bb7f54ecec63c0816e
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/AgentTest.o.d 
	@${RM} ${OBJECTDIR}/AgentTest.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -MP -MMD -MF "${OBJECTDIR}/AgentTest.o.d" -o ${OBJECTDIR}/AgentTest.o AgentTest.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/MessageTest.o: MessageTest.c  .generated_files/flags/default/1edd94b8c0219362efb5ab90edc71f048338d7f4 .generated_files/flags/default/fb83cc48fb9a4ca6d8dc33bb7f54ecec63c0816e
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/MessageTest.o.d 
	@${RM} ${OBJECTDIR}/MessageTest.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -MP -MMD -MF "${OBJECTDIR}/MessageTest.o.d" -o ${OBJECTDIR}/MessageTest.o MessageTest.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/NegotiationTest.o: NegotiationTest.c  .generated_files/flags/default/1338ec0d8300e0a50c1219cb71d82f741313ade3 .generated_files/flags/default/fb83cc48fb9a4ca6d8dc33bb7f54ecec63c0816e
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/NegotiationTest.o.d 
	@${RM} ${OBJECTDIR}/NegotiationTest.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -MP -MMD -MF "${OBJECTDIR}/NegotiationTest.o.d" -o ${OBJECTDIR}/NegotiationTest.o NegotiationTest.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/FieldTest.o: FieldTest.c  .generated_files/flags/default/d34c2c71fb1eb5ddb2e86f1ad505ce12faf1a9fc .generated_files/flags/default/fb83cc48fb9a4ca6d8dc33bb7f54ecec63c0816e
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/FieldTest.o.d 
	@${RM} ${OBJECTDIR}/FieldTest.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -MP -MMD -MF "${OBJECTDIR}/FieldTest.o.d" -o ${OBJECTDIR}/FieldTest.o FieldTest.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/Agent.o: Agent.c  .generated_files/flags/default/52b7a3ca715c88f71228dfa1c673d1cd15829f94 .generated_files/flags/default/fb83cc48fb9a4ca6d8dc33bb7f54ecec63c0816e
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Agent.o.d 
	@${RM} ${OBJECTDIR}/Agent.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -MP -MMD -MF "${OBJECTDIR}/Agent.o.d" -o ${OBJECTDIR}/Agent.o Agent.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/Message.o: Message.c  .generated_files/flags/default/1cf7ed80f9111756e7b9dce1b632e8f66f26bd4e .generated_files/flags/default/fb83cc48fb9a4ca6d8dc33bb7f54ecec63c0816e
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Message.o.d 
	@${RM} ${OBJECTDIR}/Message.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -MP -MMD -MF "${OBJECTDIR}/Message.o.d" -o ${OBJECTDIR}/Message.o Message.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/Negotiation.o: Negotiation.c  .generated_files/flags/default/b9ab055938aaa5a56f5801666d56f90ac5acddbb .generated_files/flags/default/fb83cc48fb9a4ca6d8dc33bb7f54ecec63c0816e
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Negotiation.o.d 
	@${RM} ${OBJECTDIR}/Negotiation.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -MP -MMD -MF "${OBJECTDIR}/Negotiation.o.d" -o ${OBJECTDIR}/Negotiation.o Negotiation.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/Field.o: Field.c  .generated_files/flags/default/58109380dea3980b0394e8a43feed88faafb060a .generated_files/flags/default/fb83cc48fb9a4ca6d8dc33bb7f54ecec63c0816e
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Field.o.d 
	@${RM} ${OBJECTDIR}/Field.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -MP -MMD -MF "${OBJECTDIR}/Field.o.d" -o ${OBJECTDIR}/Field.o Field.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/Lab9.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk  Lab9SupportLib.a  
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g -mdebugger -D__MPLAB_DEBUGGER_PK3=1 -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${DISTDIR}/Lab9.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}    Lab9SupportLib.a      -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)   -mreserve=data@0x0:0x1FC -mreserve=boot@0x1FC02000:0x1FC02FEF -mreserve=boot@0x1FC02000:0x1FC024FF  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=__MPLAB_DEBUGGER_PK3=1,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}"
	
else
${DISTDIR}/Lab9.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk  Lab9SupportLib.a 
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${DISTDIR}/Lab9.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}    Lab9SupportLib.a      -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}"
	${MP_CC_DIR}/xc32-bin2hex ${DISTDIR}/Lab9.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
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

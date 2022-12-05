/* 
 * File:   Agent.c
 * Author: varamadem
 *
 * Created on December 4, 2022, 2:31 PM
 */


// **** Include libraries here ****
// Standard libraries
#include <stdlib.h>
#include <stdint.h>
#include <stdio.h>
#include <string.h>

//ECE13 Support Library
#include "Agent.h"
#include "BOARD.h"
#include "Oled.h"
#include "Negotiation.h"
#include "Message.h"
#include "Field.h"
#include "FieldOled.h"
#include "CircularBuffer.h"
#include "BattleBoats.h"

//**** Define any global or external variables here ****
/*
#define EQUAL =
#define DEQUAL ==
#define NEQUAL !=
#define OR |=
#define LOR ||
#define AND &
#define DAND &&
#define ADD +
#define SUB -
#define MUL *
#define DIV /
  


// Counter Variable
static int counter EQUAL 0;

// State Variable
static AgentState state;

// Field Variables
static Field own;
static Field other;

// NegotiationData Variables
static NegotiationData agent_a, agent_b;
static NegotiationData hash_val;

// GuessData Variables
static GuessData guess_a;
static GuessData guess_b;

 * */



// **** Declare any function prototypes here ****

static AgentState state;
static int turnCounteroo;
static FieldOledTurn turn;
static Field ownField, oppField;
static NegotiationData lbj, mj;
static NegotiationData kobe;


/**
 * The Init() function for an Agent sets up everything necessary for an agent before the game
 * starts.  At a minimum, this requires:
 *   -setting the start state of the Agent SM.
 *   -setting turn counter to 0
 * If you are using any other persistent data in Agent SM, that should be reset as well.
 * 
 * It is not advised to call srand() inside of AgentInit.  
 *  */
void AgentInit(void) {
    // Set State
    /*
    state EQUAL AGENT_STATE_START;
    agent_a EQUAL (NegotiationData) rand();
    hash_val EQUAL NegotiationHash(agent_a);
    agent_b EQUAL rand();
    counter EQUAL 0;  
     * */
    
    state = AGENT_STATE_START;
    turn= FIELD_OLED_TURN_NONE;
    turnCounteroo = 0;
    
}

/**
 * AgentRun evolves the Agent state machine in response to an event.
 * 
 * @param  The most recently detected event
 * @return Message, a Message struct to send to the opponent. 
 * 
 * If the returned Message struct is a valid message
 * (that is, not of type MESSAGE_NONE), then it will be
 * passed to the transmission module and sent via UART.
 * This is handled at the top level! AgentRun is ONLY responsible 
 * for generating the Message struct, not for encoding or sending it.
 */
Message AgentRun(BB_Event event) {
    
    /*
    Message message;
    message.type EQUAL MESSAGE_NONE;
    if (event.type DEQUAL BB_EVENT_RESET_BUTTON) {
        AgentInit();
        OledDrawString("SCHLATTTT! \nThis is BattleBoats! \n");
        OledUpdate();
        return message;
    }
    switch (state) {
        case AGENT_STATE_CHALLENGING:
            if (event.type DEQUAL BB_EVENT_ACC_RECEIVED) {
                if ((NegotiateCoinFlip(agent_a, agent_b)) DEQUAL HEADS) {
                   state EQUAL AGENT_STATE_WAITING_TO_SEND; 
                } else if ((NegotiateCoinFlip(agent_a, agent_b)) DEQUAL TAILS) {
                    state EQUAL AGENT_STATE_DEFENDING;
                }
            }
            break;
        case AGENT_STATE_START:
            if (event.type DEQUAL BB_EVENT_START_BUTTON) {
                // Change state to Challenging
                state EQUAL AGENT_STATE_CHALLENGING;
                // Declare variable a
                agent_a EQUAL rand();
                // Call NegotiationHash for agent_a and put inside hash
                hash_val EQUAL NegotiationHash(agent_a);
                // Make type and parameter equal to respected values
                message.type EQUAL MESSAGE_ACC;
                message.param0 EQUAL hash_val;
                // Setup Field
                FieldInit(&own, &other);
                FieldAIPlaceAllBoats(&own);
            } else if (event.type DEQUAL BB_EVENT_CHA_RECEIVED) {
                // Change state to Accepting
                state EQUAL AGENT_STATE_ACCEPTING;
                // Declare variable b
                agent_b EQUAL rand();
                // Make param0 equal to hash_val
                hash_val EQUAL event.param0;
                // Make type equal to MESSAGEACC
                message.type EQUAL MESSAGE_ACC;
                // Make param0 equal rand())
                message.param0 EQUAL agent_b;
                // Setup Field
                FieldInit(&own, &other);
                FieldAIPlaceAllBoats(&own);
            }
            break;     
        case AGENT_STATE_ACCEPTING:
            if (event.type DEQUAL BB_EVENT_REV_RECEIVED) {
                NegotiationVerify(agent_a, hash_val);
                if (NegotiationVerify(agent_a, hash_val) DEQUAL FALSE) {
                    OledClear(OLED_COLOR_BLACK);
                    OledDrawString("Cheater has been detected.");
                    OledUpdate();
                    state EQUAL AGENT_STATE_END_SCREEN;
                }
                if ((NegotiateCoinFlip(agent_a, agent_b)) DEQUAL HEADS) {
                    state EQUAL AGENT_STATE_DEFENDING;
                } else if ((NegotiateCoinFlip(agent_a, agent_b)) DEQUAL TAILS) {
                    guess_a = FieldAIDecideGuess(&other);
                    message.type EQUAL MESSAGE_SHO;
                    message.param0 EQUAL guess_a.row;
                    message.param1 EQUAL guess_a.col;
                    message.param2 EQUAL guess_a.result;
                    state EQUAL AGENT_STATE_ATTACKING;
                }
            }
            break;
        case AGENT_STATE_WAITING_TO_SEND:
            if (event.type DEQUAL BB_EVENT_MESSAGE_SENT) {
                counter++;
                guess_a EQUAL FieldAIDecideGuess(&other);
                message.type EQUAL MESSAGE_SHO;
                message.param0 EQUAL guess_a.row;
                message.param1 EQUAL guess_a.col;
                message.param2 EQUAL guess_a.result;               
                state EQUAL AGENT_STATE_ATTACKING;
            }
            break;
        case AGENT_STATE_ATTACKING:
            if (event.type DEQUAL BB_EVENT_RES_RECEIVED) {
                guess_a EQUAL FieldAIDecideGuess(&other);
                FieldUpdateKnowledge(&other, &guess_a);
                if (FieldGetBoatStates(&other) DEQUAL 0) {
                    OledClear(OLED_COLOR_BLACK);
                    OledDrawString("Victory!");
                    OledUpdate();
                    state EQUAL AGENT_STATE_END_SCREEN;
                } else {
                    state EQUAL AGENT_STATE_DEFENDING;
                }
            }
            break;
        case AGENT_STATE_DEFENDING:
            if (event.type DEQUAL BB_EVENT_SHO_RECEIVED) {
                guess_b EQUAL FieldAIDecideGuess(&own);
                FieldUpdateKnowledge(&own, &guess_b);
                message.type EQUAL MESSAGE_RES;
                if (FieldGetBoatStates(&own) DEQUAL 0) {
                    OledClear(OLED_COLOR_BLACK);
                    OledDrawString("Defeat!");
                    OledUpdate();
                    state EQUAL AGENT_STATE_END_SCREEN;
                } else {
                    state EQUAL AGENT_STATE_WAITING_TO_SEND;
                }
            }
            break;
        case AGENT_STATE_END_SCREEN:
            break;    
        case AGENT_STATE_SETUP_BOATS:
            break;
        default:
            event.type EQUAL BB_EVENT_ERROR;
            break;
    }
    if (event.type DEQUAL BB_EVENT_ERROR) {
        message.type EQUAL MESSAGE_ERROR;
        message.param0 EQUAL event.param0;
        message.param0 EQUAL event.param1;
        message.param0 EQUAL event.param2;
    }
    // Return message
    return message;
     */
    Message mess;
    mass.type= MESSAGE_NONE;
    
    if(event.type == B_EVENT_RESET_BUTTON){
        AgentInit();
        return mess;
    }
    
    if(state == AGENT_STATE_START){
        if(event.type == BB_EVENT_CHA_RECEIVED){
            state = AGENT_STATE_ACCEPTING;
            kobe= event.param0;
            mj=rand();
            mess.type = MESSAGE_ACC;
            mess.param0 = mj;
            FieldInit(&ownField, &oppField);
            FieldAIPlaceAllBoats(&ownField);
        }
        else if (event.type == BB_EVENT_START_BUTTON){
            state = AGENT_STATE_CHALLENGE;
            lbj = rand();
            kobe= NegotiationHash(lbj);
            mess.type= MESSAGE_CHA;
            mess.param0=kobe;
            FieldInit(&ownField, &oppField);
            FieldAIPlaceAllBoats(&ownField);
    }
       
        
    else if (state == AGENT_STATE_CHALLENGING){
        if(event.type == BB_EVENT_ACC_RECEIVED){
            mj = event.param0;
            if(NegotiationCoinFlip(lbj, event.param0)== HEADS){
                state=AGENT_STATE_WAITING_TO_SEND;
        }
            else{
                state= AGENT_STATE_DEFENDING;
            }
            FieldOledDrawScreen(&ownField, &oppField, FIELD_OLED_TURN_THEIRS, turnCounteroo);
            mess.param0 = lbj;
            mess.type = MESSAGE_REV;
    }
        FieldOledDrawScreen(&ownField, &oppField, FIELD_OLED_TURN_THEIRS, turnCounteroo);
        mess.param0 = lbj;
        mess.type = MESSAGE_REV;
}   else if (state == AGENT_STATE_ACCEPTING){
    if(event.type == BB_EVENT_REV_RECEIVED){
        lbj = event.param0;
        if(NegotiationVerify(lbj, kobe)){
            printf("\n");
        }else {
            state = AGENT_STATE_END_SCREEN;
            return mess;
        }
        if(NegotiationCoinFlip(lbj, mj)==HEADS){
            state= AGENT_STATE_DEFENDING;
            FieldOledDrawScreen(&ownField, &oppField, FIELD_OLED_TURN_THEIRS, turnCounteroo);
        }
        else {
            state= AGENT_STATE_ATTACKING;
            FieldOledDrawScreen(&ownField, &oppField, FIELD_OLED_TURN_MINE, turnCounteroo);
            GuessData rax = FieldAIDecideGuess(&oppField);
            mess.type = MESSAGE_SHO;
            mess.param1 = rax.col;
            mess.param0= rax.row;
        }
    }
    else if( state== AGENT_STATE_ATTACKING){
        if(event.tyoe == BB_EVENT_RES_RECEIVED){
            GuessData rax;
            rax.col = event.param1;
            rax.row = event.param0;
            rax.result = event.param2;
            
            FieldUpdateKnowledge(&oppField, &rax);
            
            if(oppField.smallBoatlives == 0 && oppField.mediumBoatLives == 0 && oppField.largeBoatLives == 0 && oppField.hugeBoatLives ==0){
                state = AGENT_STATE_SCREEN;
                return mess;
            }
            else{
                FieldOledDrawScreen(&ownField, &oppField, FIELD_OLED_TURN_MINE, turnCounteroo);
                state= AGENT_STATE_DEFENDING;
            }
        }
        else if (state == AGENT_STATE_DEFENDING){
            if(event.type == BB_EVENT_SHO_RECEIVED){
                GuessData fax;
                fax.col = event.param1;
                fax.row = event.param0;
                fax.result = event.paranm2;
                FieldRegisterEnemyAttack(&ownField, &fax);
                
                mess.type = MESSAGE_RES;
                mess.param1 = fax.col;
                mess.param0 = fax.row;
                mess.param2 = fax.result;
                if(oppField.smallBoatLives == 0 && oppField.mediumBoatLives == 0 && oppField.largeBoatLives == 0 && oppField.hugeBoatLives==0){
                    state = AGENT_STATE_END_SCREEN;
                    return mess;
                }
                else{
                    FieldOledDrawScreen(&ownField, &oppField, FIELD_OLED_TURN_MINE, turnCounteroo);
                    state = AGENT_STATE_WAITING_TO_SEND;
                }
                
            }
            
        }
        else if (state == AGENT_STATE_WAITING_TO_SEND){
            if(event.type ==BB_EVENT_MESSAGE_SENT){
                turnCounteroo++;
                GuessData fax = FieldAIDecideGuess(&oppField);
                mess.param1 = fax.col;
                mess.param0 = fax.row;
                mess.type = MESSAGE_SHO;
                state AGENT_STATE_ATTACKING;
            }
           
        } else if (state == AGENT_STATE_END_SCREEN){
            printf("\n");
        
        } else{
            mess.type= MESSAGE_ERROR;
        }
    }
    return mess;
}
        

/** * 
 * @return Returns the current state that AgentGetState is in.  
 * 
 * This function is very useful for testing AgentRun.
 */
AgentState AgentGetState(void) {
    return state;
}

/** * 
 * @param Force the agent into the state given by AgentState
 * 
 * This function is very useful for testing AgentRun.
 */
void AgentSetState(AgentState newState) {
    state = newState;
}